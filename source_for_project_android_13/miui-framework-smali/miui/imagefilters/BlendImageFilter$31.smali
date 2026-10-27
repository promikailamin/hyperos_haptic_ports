.class Lmiui/imagefilters/BlendImageFilter$31;
.super Lmiui/imagefilters/BlendImageFilter$PorterDuffBlenderPerChannel;
.source "BlendImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/imagefilters/BlendImageFilter;->getCurrentPorterDuffBlender()Lmiui/imagefilters/BlendImageFilter$PorterDuffBlender;
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

    .line 595
    iput-object p1, p0, Lmiui/imagefilters/BlendImageFilter$31;->this$0:Lmiui/imagefilters/BlendImageFilter;

    invoke-direct {p0, p1}, Lmiui/imagefilters/BlendImageFilter$PorterDuffBlenderPerChannel;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-void
.end method


# virtual methods
.method public blacklist blendAlpha(FF)F
    .registers 4
    .param p1, "Da"    # F
    .param p2, "Sa"    # F

    .line 597
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float/2addr v0, p1

    add-float/2addr v0, p2

    return v0
.end method

.method public blacklist blendChannel(FFFF)F
    .registers 6
    .param p1, "Dc"    # F
    .param p2, "Sc"    # F
    .param p3, "Da"    # F
    .param p4, "Sa"    # F

    .line 601
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p3

    mul-float/2addr v0, p2

    add-float/2addr v0, p1

    return v0
.end method
