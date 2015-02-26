# chef-mkswap-cookbook

Chef cookbook to format the swap on every boot - allows to take into account any resizing from the LVM cookbook...

## Supported Platforms

Ubuntu

## Attributes

none

## Usage

Data bag example:

```json
{
 "id": "my_server",
 "lvm_volume_group": [
 ...
   {
     "name": "ubuntu-1404-vg",	# name of the existing swap VG in the system image...
     "physical_volumes": [
       "/dev/sdc"
     ],
     "logical_volume": [
       {
         "name": "swap_1",	# name of the existing swap LV in the system image...
         "size": "100%FREE"
       }
     ]
   }
 ...
```

### chef-mkswap::default

Include `chef-mkswap` in your node's `run_list`:

```json
"override_attributes": {
  "chef-nodeAttributes": {
    "baseDatabagsNames": [
      ...
      "lvm",
      ...
    ]
  }
},
{
  "run_list": [
    "recipe[chef-nodesAttributes::default]"
    "recipe[chef-lvm::default]"
    "recipe[chef-mkswap::default]"
  ]
}
```

## License and Authors

Author:: PE, pf. (<peychart@mail.pf>)
