PROTOC_MAIN = ./kponboardingproto.proto
PROTOC_PAGINATION = ./onboarding_pagination/onboarding_pagination.proto
PROTOC_INSTALLMENT_CATEGORY = ./installment_category/installment_category.proto
PROTOC_CUSTOMER_IDENTITY = ./customer_identity/customer_identity.proto
PROTOC_CUSTOMER_IDENTITY_VERIFICATION = ./customer_identity_verification/customer_identity_verification.proto
PROTOC_CUSTOMER_IDENTITY_BANK = ./customer_identity_bank/customer_identity_bank.proto
PROTOC = protoc
PROTOC_FLAGS = -I . --go_out=. --go_opt=paths=source_relative \
							 --go-grpc_out=. --go-grpc_opt=paths=source_relative

pagination:
	@echo "role proto..."
	$(PROTOC) $(PROTOC_FLAGS) $(PROTOC_PAGINATION)

installment_category:
	$(PROTOC) $(PROTOC_FLAGS) $(PROTOC_INSTALLMENT_CATEGORY)

customer_identity:
	$(PROTOC) $(PROTOC_FLAGS) $(PROTOC_CUSTOMER_IDENTITY)

customer_identity_verification:
	$(PROTOC) $(PROTOC_FLAGS) $(PROTOC_CUSTOMER_IDENTITY_VERIFICATION)

customer_identity_bank:
	$(PROTOC) $(PROTOC_FLAGS) $(PROTOC_CUSTOMER_IDENTITY_BANK)

main:
	@echo "create proto..."
	$(PROTOC) $(PROTOC_FLAGS) $(PROTOC_MAIN)

all: pagination customer_identity_bank customer_identity_verification customer_identity installment_category main

.PHONY: pagination customer_identity_bank customer_identity_verification customer_identity installment_category main all
