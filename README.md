# Nutanix_test
## 구성
Nutanix 연동 및 VM 생성 코드
### provider.tf
환경에 맞게 변수 설정 필요.
```ruby
provider "nutanix" {
  username     = var.nutanix_username
  password     = var.nutanix_password
  endpoint     = var.nutanix_endpoint
  port         = var.nutanix_port
  insecure     = true
  wait_timeout = 1
}
```
### terraform.tfvars
해당 코드를 실행하기 위해서 ./terraform.tfvars 파일 별도 생성 필요.\
Nutanix 스토리지 UUID, Subnet UUID는 별도 확인 필요.
```ruby
nutanix_username="<Prism 계정 명>"
nutanix_password="<Prism 패스워드>"
nutanix_endpoint="<Prism 엔드포인트>"
nutanix_storage_uuid="<Nutanix 스토리지 UUID>"
nutanix_nic_subnet_uuid="<Nutanix subnet UUID>"
```
## 참고 샤항
### 확인된 Nutanix Provider 미지원 항목
- Storage : resource, data source 미지원
- NIC : resource, data source 미지원
