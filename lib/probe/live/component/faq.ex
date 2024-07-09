defmodule Probe.Live.Component.Faq do
  use Probe, :live_component

  def render(assigns) do
    ~H"""
    <div class="max-w-screen-sm mx-auto">
      <h1 class="text-4xl font-bold text-gray-800 dark:text-gray-200">FAQ</h1>
      <p class="text-gray-600 dark:text-gray-400 mt-4">
        All the things you wanted to know about Probe, and maybe even a few you didn't.
      </p>

      <ul class="mt-8 space-y-4">
        <li>
          <p class="text-lg font-semibold text-gray-800 dark:text-gray-200">What is Probe?</p>
          <p class="text-gray-600 dark:text-gray-400">
            Probe is a testing service for WireGuard® connections.
          </p>
        </li>
        <li>
          <p class="text-lg font-semibold text-gray-800 dark:text-gray-200">How does it work?</p>
          <p class="text-gray-600 dark:text-gray-400">
            When you run a test, your machine downloads and executes a script that sends UDP
            packets crafted to mimic WireGuard messages to the probe.sh server. If all WireGuard message
            types are received, the test is successful. Otherwise, the test fails.
          </p>
        </li>
        <li>
          <p class="text-lg font-semibold text-gray-800 dark:text-gray-200">
            Is it reliable?
          </p>
          <p class="text-gray-600 dark:text-gray-400">
            Probe attempts to detect if your WireGuard traffic is being blocked on its way from
            your device to the probe.sh server. This can happen for a number of reasons, but
            we've found it's most commonly due to either your local network or your ISP. However,
            some DPI systems could trigger a false positive result if they block using
            more advanced techniques. We
            <.link
              navigate="https://www.github.com/firezone/probe"
              class="text-blue-600 dark:text-blue-400 hover:no-underline underline"
            >
              welcome PRs
            </.link>
            to improve our detection methods.
          </p>
        </li>
        <li>
          <p class="text-lg font-semibold text-gray-800 dark:text-gray-200">Who built it?</p>
          <p class="text-gray-600 dark:text-gray-400">
            Probe was built by same team that builds <.link
              navigate="https://www.firezone.dev?utm_source=probe"
              class="text-blue-600 dark:text-blue-400 hover:no-underline underline"
              target="_blank"
            >Firezone</.link>.
          </p>
        </li>
        <li>
          <p class="text-lg font-semibold text-gray-800 dark:text-gray-200">
            Why did you build this?
          </p>
          <p class="text-gray-600 dark:text-gray-400">
            We think WireGuard's great, and we'd
          </p>
        </li>
        <li>
          <p class="text-lg font-semibold text-gray-800 dark:text-gray-200">Can I view the source?</p>
          <p class="text-gray-600 dark:text-gray-400">
            Yes! The entire source code for this project (including test scripts) is <.link
              navigate="https://www.github.com/firezone/probe"
              class="text-blue-600 dark:text-blue-400 hover:no-underline underline"
              target="_blank"
            >available on GitHub</.link>.
          </p>
        </li>
        <li>
          <p class="text-lg font-semibold text-gray-800 dark:text-gray-200">
            I think I found a bug. Where can I report it?
          </p>
          <p class="text-gray-600 dark:text-gray-400">
            Please <.link
              navigate="https://www.firezone.dev?utm_source=probe"
              class="text-blue-600 dark:text-blue-400 hover:no-underline underline"
              target="_blank"
            >open a GitHub issue</.link>.
          </p>
        </li>
      </ul>
    </div>
    """
  end
end