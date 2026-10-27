.class Lmiui/imagefilters/BlendImageFilter$11;
.super Lmiui/imagefilters/BlendImageFilter$BlenderPerChannel;
.source "BlendImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/imagefilters/BlendImageFilter;->getCurrentBlender()Lmiui/imagefilters/BlendImageFilter$Blender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/imagefilters/BlendImageFilter;


# direct methods
.method constructor blacklist <init>(Lmiui/imagefilters/BlendImageFilter;)V
    .registers 2
    .param p1, "this$0"    # Lmiui/imagefilters/BlendImageFilter;

    .line 379
    iput-object p1, p0, Lmiui/imagefilters/BlendImageFilter$11;->this$0:Lmiui/imagefilters/BlendImageFilter;

    invoke-direct {p0, p1}, Lmiui/imagefilters/BlendImageFilter$BlenderPerChannel;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-void
.end method


# virtual methods
.method public blacklist blendChannel(FF)F
    .registers 6
    .param p1, "a"    # F
    .param p2, "b"    # F

    .line 381
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, p2, v0

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    if-gtz v0, :cond_10

    .line 382
    sub-float v0, v2, p1

    mul-float/2addr v1, p2

    div-float/2addr v0, v1

    sub-float/2addr v2, v0

    return v2

    .line 384
    :cond_10
    sub-float/2addr v2, p2

    mul-float/2addr v2, v1

    div-float v0, p1, v2

    return v0
.end method
