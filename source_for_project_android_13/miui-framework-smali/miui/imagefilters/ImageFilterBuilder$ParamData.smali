.class Lmiui/imagefilters/ImageFilterBuilder$ParamData;
.super Ljava/lang/Object;
.source "ImageFilterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/imagefilters/ImageFilterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParamData"
.end annotation


# instance fields
.field blacklist mIgnoreWhenNotSupported:Z

.field blacklist mParamName:Ljava/lang/String;

.field blacklist mParamValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/imagefilters/ImageFilterBuilder$ParamData;->mIgnoreWhenNotSupported:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Lmiui/imagefilters/ImageFilterBuilder$ParamData-IA;)V
    .registers 2

    invoke-direct {p0}, Lmiui/imagefilters/ImageFilterBuilder$ParamData;-><init>()V

    return-void
.end method
