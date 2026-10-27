.class Lmiui/imagefilters/BlendImageFilter$34;
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

    .line 625
    iput-object p1, p0, Lmiui/imagefilters/BlendImageFilter$34;->this$0:Lmiui/imagefilters/BlendImageFilter;

    invoke-direct {p0, p1}, Lmiui/imagefilters/BlendImageFilter$PorterDuffBlenderPerChannel;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-void
.end method


# virtual methods
.method public blacklist blendAlpha(FF)F
    .registers 4
    .param p1, "Da"    # F
    .param p2, "Sa"    # F

    .line 627
    mul-float v0, p2, p1

    return v0
.end method

.method public blacklist blendChannel(FFFF)F
    .registers 6
    .param p1, "Dc"    # F
    .param p2, "Sc"    # F
    .param p3, "Da"    # F
    .param p4, "Sa"    # F

    .line 631
    mul-float v0, p2, p3

    return v0
.end method
