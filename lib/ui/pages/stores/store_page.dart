import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:food_delivery/controllers/general.dart';
import 'package:food_delivery/controllers/view_controllers/product_controller.dart';
import 'package:food_delivery/helper.dart';
import 'package:food_delivery/models/models.dart';
import 'package:reactive_forms/reactive_forms.dart';

class StorePage extends ConsumerStatefulWidget {
  const StorePage({
    Key? key,
    required this.edit,
    required this.addresses,
    required this.chains,
    required this.stock,
    this.store,
  }) : super(key: key);
  final bool edit;
  final StoreModel? store;
  final List<StoreAddressModel> addresses;
  final List<ChainModel> chains;
  final List<StockModel> stock;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _StorePageState();
}

class _StorePageState extends ConsumerState<StorePage> {
  late FToast toast;
  late final FormGroup form;
  FormArray get formArray => form.control('array') as FormArray;

  @override
  void initState() {
    super.initState();
    toast = FToast();
    toast.init(context);
    FormArray? formArray;
    if (widget.store != null) {
      final List<StockModel> filtered = List.from(
          widget.stock.where((element) => element.storeId == widget.store!.id));
      formArray = fb.array(
        filtered
            .map((e) => FormGroup({
                  'id': FormControl<int>(value: e.id),
                  'quantity_in_store': FormControl<int>(
                      value: e.quantity, validators: [Validators.number]),
                  'fk_storeid': FormControl<int>(value: e.storeId),
                  'fk_productid': FormControl<int>(value: e.productId),
                }))
            .toList(),
      );
    } else {
      final filteredAddresses = [];
      formArray = fb.array(
        filteredAddresses
            .map((e) => FormGroup({
                  'id': FormControl<int>(value: e.id),
                  'quantity_in_store': FormControl<int>(
                      value: e.quantity, validators: [Validators.number]),
                  'fk_storeid': FormControl<int>(value: e.storeId),
                  'fk_productid': FormControl<int>(value: e.productId),
                }))
            .toList(),
      );
    }
    form = fb.group({
      'id': FormControl<int>(value: widget.store?.id),
      'name': FormControl<String>(
          validators: [Validators.required], value: widget.store?.name),
      'fk_store_addressid': FormControl<int>(
          validators: [Validators.required],
          value: widget.store?.storeAddressId),
      'fk_chainid': FormControl<int>(
          validators: [Validators.required], value: widget.store?.chainId),
      'array': formArray,
    });
  }

  Future<void> createStore(FormGroup form) async {
    final result = await ref.read(storeProvider.notifier).createStore(
        StoreModel.fromJson(form.value),
        formArray.controls.map((e) => StockModel.fromJson(e.value)).toList());
    toast.showToast(
      child: result ? Helper.successToast(context) : Helper.errorToast(context),
    );
    Helper.pop(context);
  }

  Future<void> editStore(FormGroup form) async {
    final result = await ref.read(storeProvider.notifier).editStore(
        StoreModel.fromJson(form.value),
        formArray.controls.map((e) => StockModel.fromJson(e.value)).toList());
    toast.showToast(
      child: result ? Helper.successToast(context) : Helper.errorToast(context),
    );
    Helper.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final productState = ref.watch(productProvider);
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
                      ? 'Edit store - ${widget.store?.name}'
                      : 'Create store',
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
                ReactiveDropdownField<int>(
                  formControlName: 'fk_store_addressid',
                  validationMessages: (control) => {
                    ValidationMessage.required: 'required',
                  },
                  items: widget.addresses
                      .map(
                        (e) => DropdownMenuItem(
                          value: e.id,
                          child: Text(e.fullAddressName),
                        ),
                      )
                      .toList(),
                  decoration: const InputDecoration(
                    labelText: 'Store address',
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ReactiveDropdownField<int>(
                  formControlName: 'fk_chainid',
                  validationMessages: (control) => {
                    ValidationMessage.required: 'required',
                  },
                  items: widget.chains
                      .map(
                        (e) => DropdownMenuItem(
                          value: e.id,
                          child: Text(e.name),
                        ),
                      )
                      .toList(),
                  decoration: const InputDecoration(
                    labelText: 'Chain',
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                //--------------------------------------------------------------------
                if (productState is SuccessProductState) ...[
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
                                      child: ReactiveTextField<int>(
                                        formControlName: 'quantity_in_store',
                                        validationMessages: (control) => {
                                          ValidationMessage.required:
                                              'required',
                                        },
                                        textInputAction: TextInputAction.done,
                                        decoration: const InputDecoration(
                                          labelText: 'Quantity',
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: ReactiveDropdownField<int>(
                                        formControlName: 'fk_productid',
                                        items: productState.products
                                            .map((e) => DropdownMenuItem<int>(
                                                value: e.id,
                                                child: Text(e.name)))
                                            .toList(),
                                        decoration: const InputDecoration(
                                          labelText: 'Product',
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
                          'quantity_in_store': FormControl<int>(
                              value: 0, validators: [Validators.number]),
                          'fk_productid': FormControl<int>(
                              value: productState.products.first.id),
                        }));
                      },
                      child: const Text('add'),
                    ),
                  ),
                ],
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
                          editStore(form);
                        } else {
                          createStore(form);
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
