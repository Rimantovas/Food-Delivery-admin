import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:food_delivery/constants.dart';
import 'package:food_delivery/controllers/general.dart';
import 'package:food_delivery/helper.dart';
import 'package:food_delivery/models/building_type/building_type.dart';
import 'package:food_delivery/models/client/client.dart';
import 'package:food_delivery/models/client_address/client_address.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:collection/collection.dart';

final buildTypeProvider =
    StateProvider.autoDispose<List<BuildingTypeModel>>((ref) {
  return [];
});

class ClientPage extends ConsumerStatefulWidget {
  const ClientPage({
    Key? key,
    required this.edit,
    required this.addresses,
    this.client,
  }) : super(key: key);
  final bool edit;
  final ClientModel? client;
  final List<ClientAddressModel> addresses;
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ClientPageState();
}

class _ClientPageState extends ConsumerState<ClientPage> {
  late FToast toast;
  late final FormGroup form;
  FormArray get formArray => form.control('array') as FormArray;

  @override
  void initState() {
    super.initState();
    fetchTypes();
    toast = FToast();
    toast.init(context);
    FormArray? formArray;
    if (widget.client != null) {
      final List<ClientAddressModel> filteredAddresses = List.from(widget
          .addresses
          .where((element) => element.clientId == widget.client!.id));
      formArray = fb.array(
          filteredAddresses
              .map((e) => FormGroup({
                    'id': FormControl<int>(value: e.id),
                    'fk_clientid': FormControl<int>(value: e.clientId),
                    'full_address_name':
                        FormControl<String>(value: e.fullAddressName),
                    'latitude': FormControl<double>(value: e.latitude),
                    'longtitude': FormControl<double>(value: e.longtitude),
                    'city': FormControl<String>(value: e.city),
                    'street': FormControl<String>(value: e.street),
                    'comments': FormControl<String>(value: e.comments),
                    'building_type': FormControl<int>(value: e.buildingTypeId),
                  }))
              .toList(),
          [Validators.maxLength(5)]);
    } else {
      final filteredAddresses = [];
      formArray = fb.array(
          filteredAddresses
              .map((e) => FormGroup({
                    'id': FormControl<int>(value: e.id),
                    'city': FormControl<String>(value: e.city),
                    'street': FormControl<String>(value: e.street),
                    'comments': FormControl<String>(value: e.comments),
                    'building_type': FormControl<int>(value: e.buildingTypeId),
                  }))
              .toList(),
          [Validators.maxLength(5)]);
    }
    form = fb.group({
      'id': FormControl<int>(value: widget.client?.id),
      'name': FormControl<String>(
          validators: [Validators.required], value: widget.client?.name),
      'phone_number': FormControl<String>(
          validators: [Validators.required], value: widget.client?.phoneNumber),
      'email': FormControl<String>(
          validators: [Validators.required, Validators.email],
          value: widget.client?.email),
      'array': formArray,
    });
  }

  Future<void> fetchTypes() async {
    final result = await ref.read(databaseProvider).getList(BUILDING_TYPE);
    ref.read(buildTypeProvider.notifier).state =
        result.map((e) => BuildingTypeModel.fromJson(e)).toList();
  }

  Future<void> createClient(FormGroup form) async {
    final result = await ref.read(clientProvider.notifier).createClient(
        ClientModel.fromJson(form.value),
        formArray.controls
            .map((e) => ClientAddressModel.fromJson(e.value))
            .toList());
    toast.showToast(
      child: result ? Helper.successToast(context) : Helper.errorToast(context),
    );
    Helper.pop(context);
  }

  Future<void> editClient(FormGroup form) async {
    final result = await ref.read(clientProvider.notifier).editClient(
        ClientModel.fromJson(form.value).copyWith(
          dateCreated: widget.client?.dateCreated,
        ),
        formArray.controls
            .map((e) => ClientAddressModel.fromJson(e.value))
            .toList());
    toast.showToast(
      child: result ? Helper.successToast(context) : Helper.errorToast(context),
    );
    Helper.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final types = ref.watch(buildTypeProvider);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: ReactiveForm(
          formGroup: form,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 25),
            child: Column(
              children: [
                Text(
                  widget.edit
                      ? 'Edit client - ${widget.client?.name}'
                      : 'Create client',
                  style: Theme.of(context).textTheme.headline1,
                ),
                const SizedBox(
                  height: 50,
                ),
                if (widget.edit)
                  ReactiveTextField<int>(
                    formControlName: 'id',
                    readOnly: true,
                    validationMessages: (control) => {
                      ValidationMessage.required: 'required',
                    },
                    decoration: const InputDecoration(
                      labelText: 'ID',
                    ),
                  ),
                const SizedBox(
                  height: 30,
                ),
                ReactiveTextField<String>(
                  formControlName: 'name',
                  validationMessages: (control) => {
                    ValidationMessage.required: 'required',
                  },
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    labelText: 'Name',
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ReactiveTextField<String>(
                  formControlName: 'phone_number',
                  validationMessages: (control) => {
                    ValidationMessage.required: 'required',
                  },
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    labelText: 'Phone number',
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ReactiveTextField<String>(
                  formControlName: 'email',
                  validationMessages: (control) => {
                    ValidationMessage.required: 'required',
                  },
                  textInputAction: TextInputAction.done,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                //--------------------------------------------------------------------
                ReactiveFormArray(
                    formArray: formArray,
                    builder: (context, array, child) {
                      return Column(
                        children: formArray.controls
                            .map((formGroup) => formGroup as FormGroup)
                            .map((form) {
                          return ReactiveForm(
                            formGroup: form,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ReactiveTextField<String>(
                                      formControlName: 'city',
                                      validationMessages: (control) => {
                                        ValidationMessage.required: 'required',
                                      },
                                      textInputAction: TextInputAction.done,
                                      decoration: const InputDecoration(
                                        labelText: 'City',
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ReactiveTextField<String>(
                                      formControlName: 'street',
                                      validationMessages: (control) => {
                                        ValidationMessage.required: 'required',
                                      },
                                      textInputAction: TextInputAction.done,
                                      decoration: const InputDecoration(
                                        labelText: 'Street',
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ReactiveTextField<String>(
                                      formControlName: 'comments',
                                      validationMessages: (control) => {
                                        ValidationMessage.required: 'required',
                                      },
                                      textInputAction: TextInputAction.done,
                                      decoration: const InputDecoration(
                                        labelText: 'Comments',
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ReactiveDropdownField<int>(
                                      formControlName: 'building_type',
                                      items: types
                                          .map((e) => DropdownMenuItem<int>(
                                              value: e.id, child: Text(e.name)))
                                          .toList(),
                                      decoration: const InputDecoration(
                                        labelText: 'Type',
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      );
                    }),
                Align(
                  alignment: Alignment.centerLeft,
                  child: ElevatedButton(
                    onPressed: () {
                      formArray.add(FormGroup({
                        'city': FormControl<String>(value: ''),
                        'street': FormControl<String>(value: ''),
                        'comments': FormControl<String>(value: ''),
                        'building_type': FormControl<int>(value: 1),
                      }));
                    },
                    child: const Text('add'),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .2,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      if (form.valid) {
                        if (widget.edit) {
                          editClient(form);
                        } else {
                          createClient(form);
                        }
                      } else {
                        form.markAllAsTouched();
                      }
                    },
                    child: Text(widget.edit ? 'Save changes' : 'Create'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
