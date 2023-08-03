part of 'quote_details_cubit.dart';

abstract class QuoteDetailsState extends Equatable {
  const QuoteDetailsState();
}

class QuoteDetailsInProgess extends QuoteDetailsState {
  const QuoteDetailsInProgess();

  @override
  List<Object?> get props => [];
}

class QuoteDetailsSuccess extends QuoteDetailsState {
  const QuoteDetailsSuccess({
    required this.quote,
    // TODO: Recieve new property
  });

  final Quote quote;
  // TODO: Add new property

  @override
  List<Object?> get props => [
        quote,
        // TODO: List new property 
      ];
}

class QuoteDetailsFailure extends QuoteDetailsState {
  const QuoteDetailsFailure();

  @override
  List<Object?> get props => [];
}
