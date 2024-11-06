import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'address_viewmodel.dart';

class AddressView extends StackedView<AddressViewModel> {
  const AddressView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AddressViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: viewModel.navigateToPreviousStep,
        ),
        title: Text('ADDRESS'),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Step Progress Indicator
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Row(
              children: [
                _buildStepIndicator('Address',
                    isActive: viewModel.currentStep == 0),
                _buildStepIndicator('Order Summary',
                    isActive: viewModel.currentStep == 1),
                _buildStepIndicator('Payment',
                    isActive: viewModel.currentStep == 2),
              ],
            ),
          ),
          // Address Cards
          Expanded(
            child: ListView.builder(
              itemCount: viewModel.addresses.length,
              itemBuilder: (context, index) {
                var address = viewModel.addresses[index];
                return _buildAddressCard(
                  address['type'] ?? '',
                  address['name'] ?? '',
                  address['address'] ?? '',
                  () => viewModel.editAddress(index, address),
                );
              },
            ),
          ),
          // Add New Address Button
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: TextButton.icon(
              onPressed: () {
                viewModel.addNewAddress({
                  'type': 'New',
                  'name': 'New Name',
                  'address': 'New Address'
                });
              },
              icon: Icon(Icons.add_circle_outline),
              label: Text('Add New Address'),
            ),
          ),
          // Bottom Price and Continue Button
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(color: Colors.grey[300]!),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '₹ 26,000/-',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    Text(
                      '₹ 24,700/-',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: viewModel.navigateToNextStep,
                  child: Text('Continue'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStepIndicator(String title, {bool isActive = false}) {
    return Expanded(
      child: Column(
        children: [
          Container(
            height: 2,
            color: isActive ? Colors.teal : Colors.grey[300],
          ),
          SizedBox(height: 4),
          Text(
            title,
            style: TextStyle(
              color: isActive ? Colors.teal : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAddressCard(
    String type,
    String name,
    String address,
    VoidCallback onEdit,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(type == 'Home' ? Icons.home : Icons.business),
                      SizedBox(width: 8),
                      Text(
                        type,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: onEdit,
                    child: Text('Edit'),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              Text(address),
            ],
          ),
        ),
      ),
    );
  }

  @override
  AddressViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AddressViewModel();
}
