use ExtUtils::MakeMaker;

WriteMakefile (
    NAME         => "News::NNTPClient",
    DISTNAME     => "NNTPClient",

    VERSION_FROM => "NNTPClient.pm",

    dist         => {
        COMPRESS  => "gzip -9f",
        SUFFIX    => "gz",
    }
);
