import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:food_delivery/controllers/general.dart';
import 'package:food_delivery/controllers/view_controllers/courier_controller.dart';
import 'package:food_delivery/helper.dart';
import 'package:food_delivery/models/models.dart';
import 'package:reactive_forms/reactive_forms.dart';

class CourierPage extends ConsumerStatefulWidget {
  const CourierPage({
    Key? key,
    required this.edit,
    this.courier,
  }) : super(key: key);
  final bool edit;
  final CourierModel? courier;
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CourierPageState();
}

class _CourierPageState extends ConsumerState<CourierPage> {
  late FToast toast;
  late final FormGroup form;

  @override
  void initState() {
    super.initState();
    toast = FToast();
    toast.init(context);
    form = fb.group({
      'id': FormControl<int>(value: widget.courier?.id),
      'name': FormControl<String>(
          validators: [Validators.required], value: widget.courier?.name),
      'phone_number': FormControl<String>(
          validators: [Validators.required],
          value: widget.courier?.phoneNumber),
      'car_number_plate': FormControl<String>(
          validators: [Validators.required],
          value: widget.courier?.carNumberPlate),
    });
  }

  Future<void> createCourier(FormGroup form) async {
    final result = await ref
        .read(courierProvider.notifier)
        .createCourier(CourierModel.fromJson(form.value));
    toast.showToast(
      child: result ? Helper.successToast(context) : Helper.errorToast(context),
    );
    Helper.pop(context);
  }

  Future<void> editCourier(FormGroup form) async {
    final result = await ref
        .read(courierProvider.notifier)
        .editCourier(CourierModel.fromJson(form.value));
    toast.showToast(
      child: result ? Helper.successToast(context) : Helper.errorToast(context),
    );
    Helper.pop(context);
  }

  @override
  Widget build(BuildContext context) {
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
                      ? 'Edit courier - ${widget.courier?.name}'
                      : 'Create courier',
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
                  formControlName: 'car_number_plate',
                  validationMessages: (control) => {
                    ValidationMessage.required: 'required',
                  },
                  textInputAction: TextInputAction.done,
                  decoration: const InputDecoration(
                    labelText: 'Car number plate',
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
                          editCourier(form);
                        } else {
                          createCourier(form);
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
