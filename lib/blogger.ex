require HTTPoison
defmodule Blogger do
  use HTTPoison.Base

  @url "https://medium.com/podiihq/quick-connect-to-your-amazon-ec2-linux-instance-through-the-command-line-6c682960ef91"

  def fetch_blog do
    {:ok, %HTTPoison.Response{body: body, headers: headers, request: request, request_url: request_url, status_code: status_code}} =
      HTTPoison.get(@url)

    %{
      body: body,
      headers: headers,
      request: request,
      request_url: request_url,
      status_code: status_code
    }
  end

  def capitalize_animals(animals) do
    Enum.map(animals, &String.upcase/1)
  end
end
