import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:food_delivery/controllers/general.dart';
import 'package:food_delivery/controllers/view_controllers/product_controller.dart';
import 'package:food_delivery/helper.dart';
import 'package:food_delivery/models/models.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ProductPage extends ConsumerStatefulWidget {
  const ProductPage({
    Key? key,
    required this.edit,
    this.product,
  }) : super(key: key);
  final bool edit;
  final ProductModel? product;
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProductPageState();
}

class _ProductPageState extends ConsumerState<ProductPage> {
  late FToast toast;

  @override
  void initState() {
    super.initState();
    toast = FToast();
    toast.init(context);
  }

  Future<void> createProduct(FormGroup form) async {
    final result = await ref
        .read(productProvider.notifier)
        .createProduct(ProductModel.fromJson(form.value));
    toast.showToast(
      child: result ? Helper.successToast(context) : Helper.errorToast(context),
    );
    Helper.pop(context);
  }

  Future<void> editProduct(FormGroup form) async {
    final result = await ref
        .read(productProvider.notifier)
        .editProduct(ProductModel.fromJson(form.value).copyWith(
          dateCreated: widget.product?.dateCreated,
        ));
    toast.showToast(
      child: result ? Helper.successToast(context) : Helper.errorToast(context),
    );
    Helper.pop(context);
  }

  FormGroup buildForm() => fb.group({
        'id': FormControl<int>(value: widget.product?.id),
        'name': FormControl<String>(
            validators: [Validators.required], value: widget.product?.name),
        'image_url': FormControl<String>(validators: [
          Validators.required,
        ], value: widget.product?.imageUrl),
        'description': FormControl<String>(
            validators: [Validators.required],
            value: widget.product?.description),
        'unit_incrementation': FormControl<int>(
            validators: [Validators.required, Validators.number],
            value: widget.product?.unitIncrementation),
        'price_per_incrementation': FormControl<double>(validators: [
          Validators.required,
          Validators.pattern('[+-]?([0-9]*[.])?[0-9]+')
        ], value: widget.product?.pricePerIncrementation),
        'unit': FormControl<int>(
            validators: [Validators.required, Validators.number],
            value: widget.product?.unitId),
        'type': FormControl<int>(
            validators: [Validators.required, Validators.number],
            value: widget.product?.typeId),
        'fk_producerid': FormControl<int>(
            validators: [Validators.required, Validators.number],
            value: widget.product?.producerId),
      });

  @override
  Widget build(BuildContext context) {
    final productState = ref.watch(productProvider);
    if (productState is SuccessProductState) {}
    return Scaffold(
      appBar: AppBar(),
      body: productState is SuccessProductState
          ? SingleChildScrollView(
              child: ReactiveFormBuilder(
                form: buildForm,
                builder: (context, form, child) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 25),
                    child: Column(
                      children: [
                        Text(
                          widget.edit
                              ? 'Edit product - ${widget.product?.name}'
                              : 'Create product',
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
                          formControlName: 'image_url',
                          validationMessages: (control) => {
                            ValidationMessage.required: 'required',
                          },
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                            labelText: 'Image url',
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        ReactiveTextField<String>(
                          formControlName: 'description',
                          validationMessages: (control) => {
                            ValidationMessage.required: 'required',
                          },
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                            labelText: 'Description',
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        ReactiveTextField<int>(
                          formControlName: 'unit_incrementation',
                          validationMessages: (control) => {
                            ValidationMessage.required: 'required',
                          },
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                            labelText: 'Unit incrementation',
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        ReactiveTextField<double>(
                          formControlName: 'price_per_incrementation',
                          validationMessages: (control) => {
                            ValidationMessage.required: 'required',
                          },
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                            prefix: Text('€'),
                            labelText: 'Price',
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        ReactiveDropdownField<int>(
                          items: productState.units
                              .map(
                                (e) => DropdownMenuItem<int>(
                                  value: e.id,
                                  child: Text(e.name),
                                ),
                              )
                              .toList(),
                          formControlName: 'unit',
                          validationMessages: (control) => {
                            ValidationMessage.required: 'required',
                          },
                          decoration: const InputDecoration(
                            labelText: 'Unit',
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        ReactiveDropdownField<int>(
                          items: productState.types
                              .map(
                                (e) => DropdownMenuItem<int>(
                                  value: e.id,
                                  child: Text(e.name),
                                ),
                              )
                              .toList(),
                          formControlName: 'type',
                          validationMessages: (control) => {
                            ValidationMessage.required: 'required',
                          },
                          decoration: const InputDecoration(
                            labelText: 'Type',
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        ReactiveDropdownField<int>(
                          items: productState.producers
                              .map(
                                (e) => DropdownMenuItem<int>(
                                  value: e.id,
                                  child: Text(e.name),
                                ),
                              )
                              .toList(),
                          formControlName: 'fk_producerid',
                          validationMessages: (control) => {
                            ValidationMessage.required: 'required',
                          },
                          decoration: const InputDecoration(
                            labelText: 'Producer',
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .2,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              if (form.valid) {
                                if (widget.edit) {
                                  editProduct(form);
                                } else {
                                  createProduct(form);
                                }
                              } else {
                                form.markAllAsTouched();
                              }
                            },
                            child:
                                Text(widget.edit ? 'Save changes' : 'Create'),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          : const Center(child: CircularProgressIndicator()),
    );
  }
}
