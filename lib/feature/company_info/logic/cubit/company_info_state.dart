part of 'company_info_cubit.dart';

@freezed
class CompanyInfoState with _$CompanyInfoState {
  const factory CompanyInfoState.initial() = _Initial;
  const factory CompanyInfoState.companyInfoloading() = CompanyInfoLoading;
  const factory CompanyInfoState.companyInfoSucces(CompanyInfoModel companyInfo) = CompanyInfoSucces;
  const factory CompanyInfoState.companyInfoError(ApiErrorHandler apiErrorHadler) = CompanyInfoError;
}
