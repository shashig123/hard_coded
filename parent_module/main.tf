module "resource" {
    source= "../child/rresource_gp"
}

module "storage" {
    depends_on = [ module.resource ]
    source ="../child/stg"
}
module "storage_container"{
    depends_on = [ module.storage ]
    source = "../child/stg_container"
}
