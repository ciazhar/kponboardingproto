PROTOC_MAIN = ./kponboardingproto.proto
PROTOC_PAGINATION = ./pagination/pagination.proto
PROTOC_INSTALLMENT_CATEGORY = ./installment_category/installment_category.proto
PROTOC = protoc
PROTOC_FLAGS = -I . --go_out=. --go_opt=paths=source_relative \
							 --go-grpc_out=. --go-grpc_opt=paths=source_relative

pagination:
	@echo "role proto..."
	$(PROTOC) $(PROTOC_FLAGS) $(PROTOC_PAGINATION)

installment_category:
	$(PROTOC) $(PROTOC_FLAGS) $(PROTOC_INSTALLMENT_CATEGORY)

main:
	@echo "create proto..."
	$(PROTOC) $(PROTOC_FLAGS) $(PROTOC_MAIN)

all: pagination installment_category main

.PHONY: pagination installment_category main all
