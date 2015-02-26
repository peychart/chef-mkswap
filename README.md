# chef-mkswap-cookbook

 Chef cookbook to format the swap on every boot - allows to take into account any resizing from the LVM cookbook...

## Supported Platforms

 Ubuntu

## Attributes

 none

## Usage

### chef-mkswap::default

Include `chef-mkswap` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[chef-mkswap::default]"
  ]
}
```

## License and Authors

Author:: PE, pf. (<peychart@mail.pf>)
