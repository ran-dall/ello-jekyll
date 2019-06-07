# ELLO 👋  JEKYLL: A Jekyll vCard Theme

Ello is a simple animated Jekyll vCard theme by [Randall](https://ran-dall.github.io), optimized for use with GitHub Pages (but can be used wherever Jekyll can live).

Based on a [Dribbble](https://dribbble.com/shots/2723297-Contact-Me-UI-Animation) by [Riccardo Cavallo](https://dribbble.com/richox) and a [CodePen](https://codepen.io/BeanBaag/pen/dzyGpM) by [Aaron Taylor](https://twitter.com/beanbaag).

###### Base Theme Demo: https://ran-dall.github.io/ello-jekyll/

You can also look my personal GitHub Pages site, which uses this theme but has several modifications.

###### My GitHub Pages site: https://ran-dall.github.io/
###### My GitHub Pages site repo: https://github.com/ran-dall/ran-dall.github.io

## Installation

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "ello-jekyll-vcard-theme"
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: ello-jekyll-vcard-theme
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ello-jekyll-vcard-theme

## Usage

If you install this theme as a `remote-theme` for GitHub Pages or as a gem, you'll be required to make your own `index.html`, `_data/main.yaml`, and `data/details.yaml` files. You can use the files included in this repository (which are originally came from my [GitHub Pages site](https://ran-dall.github.io)) as working example of what's required.

###### GitHub Pages

If you plan on using this theme on GitHub Pages, you must declare it in your `_config.yaml` file as a `remote-theme` as described in [this blog post](https://github.blog/2017-11-29-use-any-theme-with-github-pages/).

### TL;DR

Use `main.yaml` to update the information on the `contact-box` with whatever you wish to display in the `content-box` area. Use `details.yaml` to list all the profiles you want to link to from your site. Currently, there can be up to 24 contact links; but it's something you can modify [on **line 216**](https://github.com/ran-dall/ello-jekyll/blob/42535e1874e0d0987e0926b241d9bb91525464d3/_sass/componets/contact-box.scss#L216).

#### `./favicon.png`
If you wish to display a Favicon, you may do so by simply adding a `.png` image to the root of the site.

#### `main.yaml`
- `hi` - The main message displayed on the top of the `contact-box.` In the example provided, I'm using a secondary `site.data.details.name` variable to input my name; which can be further modified in the `details.yaml` file.

-  `message` - The secondary message displayed on the mid-section of the `contact-box.`

- `cta-button` - The call-to-action message displayed on the button, which is then displayed in the `contact-box`.

- `cta-title` - The message displayed when the `contact-box` is active.

#### `details.yaml`
- `name` - Your name (only required if you're using the `site.data.details.name` variable)

- `avatar` - Your GitHub avatar. Reference the [`jekyll-avatar` repo](https://github.com/benbalter/jekyll-avatar) for more information on how to use.

- `contact` - Enter your information in the following format:
    - `profile` - Name of the Network, which will be displayed
    - `network` - Slug (short-name) of the Network, which is used to assign styles. See note below.
    - `user-id` - Your User-ID on the Network, which will be displayed as a subtitle.
    - `link` - Link to your profile on Network, which will be linked to the box.
    - `icon` - Link from [Font-Awesome Icon Library](https://fontawesome.com/icons), which will be displayed.

#### Note about STYLES
Currently **ONLY** the following Networks are supported (#HEX included):

* email: `#A3AAAE` - `iCloud's color`
* s(ecure)-email: `#0091FF` - `Criptext's color`
* headmaster: `#ff5555` - `Headmaster's Color (...my Medium publication)`
* work: `#bd93f9` - `Conjured's Color (...where I work)`
* google: `#4285f4`
* keybase: `#4c8eff`
* github: `#6e5494`
* gitlab: `#fc6d26`
* bitbucket: `#205081`
* medium: `#00ab6c`
* dribbble: `#ea4c89`
* behance: `#1769ff`
* telegram: `#0088CC`
* linkedin: `#0077B5`
* angellist: `#000`
* facebook: `#3b5998`
* twitter: `#1da1f2`

In order to add more Networks, you must also add the network in `_sass/componets/contact-box.scss`. [On **`line 262`**](https://github.com/ran-dall/ello-jekyll/blob/42535e1874e0d0987e0926b241d9bb91525464d3/_sass/componets/contact-box.scss#L262), you should see the top of the currently supported Networks listed. You can add the network anywhere you desire in the following format...

```
  &.<slug-from-details-yaml> {
    @include icon-styles($<network-variable-from-details-yaml>)
  }
```

Currently, there can be up to 24 contact links; but it's something you can modify [on **line 216**](https://github.com/ran-dall/ello-jekyll/blob/42535e1874e0d0987e0926b241d9bb91525464d3/_sass/componets/contact-box.scss#L216).

You are more than welcome to add more with [Jekyll's overide feature for Gem themes](https://jekyllrb.com/docs/themes/#overriding-theme-defaults) and/or contribute the modification to [this theme's GitHub repository](https://github.com/ran-dall/ello-jekyll).


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ran-dall/ello-jekyll. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Development

To set up your environment to develop this theme, run `bundle install`.

Your theme is setup just like a normal Jekyll site! To test your theme, run `bundle exec jekyll serve` and open your browser at `http://localhost:4000`. This starts a Jekyll server using your theme. Add pages, documents, data, etc. like normal to test your theme's contents. As you make modifications to your theme and to your content, your site will regenerate and you should see the changes in the browser after a refresh, just like normal.

When your theme is released, only the files in `_layouts`, `_includes`, `_sass` and `assets` tracked with Git will be bundled.
To add a custom directory to your theme-gem, please edit the regexp in `vcard.gemspec` accordingly.

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
