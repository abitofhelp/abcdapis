PROJECT_DIR=$(GOPATH)/src/github.com/abitofhelp/abcdapis
PROTO_DIR=$(PROJECT_DIR)/abcdapis
BUF_DIR=$(PROTO_DIR)

bufbuild:
	@buf build
.PHONY:bufbuild

#bufclean:
#	@rm -rf "$(PROJECT_DIR)/grpc"
#.PHONY:bufclean

#bufgen: bufclean bufbuild #buflint
#	@buf generate
#.PHONY:bufgen

buflint:
	@buf lint
.PHONY:buflint

buflist:
	@buf ls-files
.PHONY:buflist

bufpub: bufupdate bufpush
.PHONY:bufpub

bufpush:
	@buf push "$(PROTO_DIR)"
.PHONY:bufpush

bufupdate:
	@buf mod update "$(PROTO_DIR)"
.PHONY:bufupdate

