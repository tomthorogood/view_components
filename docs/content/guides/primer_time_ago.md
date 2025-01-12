---
title: Moving Away From `Primer::TimeAgoComponent`
---

This guide will show you how to upgrade from the now deprecated
[`Primer::TimeAgoComponent`](https://primer.style/view-components/components/timeago)
to the latest [`Primer::Beta::RelativeTime`](https://primer.style/view-components/components/beta/relativetime)
component.

## A Migration Example

Use of the `TimeAgoComponent` component can be migrated with only a few minor changes.

For example, if the `TimeAgoComponent` was set up in this way:

```rb
<%= render(Primer::TimeAgoComponent.new(time: Time.at(628232400))) %>
```

It can be migrated by renaming `time` to `datetime`, and adding the `tense:
:past` setting.

```rb
<%= render(Primer::Beta::RelativeTime.new(datetime: Time.at(628232400), tense: :past)) %>
```

## Arguments

The majority of options available in `RelativeTime` are not relevant when
using it as a replacement for `TimeAgo`. There are a few changes that need to be
noted, however.

| From `Primer::TimeAgoComponent` | To `Primer::Beta::RelativeTime` | Notes |
|---------------------------------|---------------------------------|-------|
| `time`  | `datetime`       | Renamed argument, but the semantics remain the same                                                                     |
| `micro` | `format: :micro` | Instead of a boolean flag, set the `format` argument to the value of `:micro`                                           |
| n/a     | `tense: :past`   | Required for displaying how long ago the set time was. This argument tells `RelativeTime` to behave like `TimeAgo` did. |

The remaining arguments for `RelativeTime` can be found in the docu7mentation
for that component.

Please see the following for complete descriptions and examples.

* [Deprecated `Primer::TimeAgoComponent`](https://primer.style/view-components/components/timeago)
* [`Primer::Beta::RelativeTime` component](https://primer.style/view-components/components/beta/relativetime)
* [`Primer::Beta::RelativeTime` Lookbook examples](https://primer.style/view-components/lookbook/inspect/primer/beta/relative_time_preview/default)

<p>&nbsp;</p>

[&larr; Back to migration guides](https://primer.style/view-components/migration)
