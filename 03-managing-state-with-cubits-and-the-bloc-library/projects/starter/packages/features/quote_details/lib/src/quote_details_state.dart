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
  QuoteDetailsSuccess({
    required this.quote,
    this.quoteUpdateError
  });

  final Quote quote;
  dynamic quoteUpdateError;

  @override
  List<Object?> get props => [
        quote,
        quoteUpdateError
      ];
}

class QuoteDetailsFailure extends QuoteDetailsState {
  const QuoteDetailsFailure();

  @override
  List<Object?> get props => [];
}
