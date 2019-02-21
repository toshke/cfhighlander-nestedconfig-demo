CfhighlanderTemplate do
  Name 's3-website'
  Description "s3-website"

  Component name: 's3cloudfront', template: 's3-cloudfront', render: Inline

end
