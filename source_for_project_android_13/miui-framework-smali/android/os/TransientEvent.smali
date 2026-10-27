.class Landroid/os/TransientEvent;
.super Landroid/os/Event;
.source "DynamicEffect.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 888
    invoke-direct {p0}, Landroid/os/Event;-><init>()V

    .line 889
    const/4 v0, 0x7

    iput v0, p0, Landroid/os/TransientEvent;->mLen:I

    .line 890
    return-void
.end method


# virtual methods
.method blacklist generateData()[I
    .registers 5

    .line 893
    iget v0, p0, Landroid/os/TransientEvent;->mLen:I

    new-array v0, v0, [I

    .line 894
    .local v0, "data":[I
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 895
    iget v2, p0, Landroid/os/TransientEvent;->mType:I

    aput v2, v0, v1

    .line 896
    iget v1, p0, Landroid/os/TransientEvent;->mLen:I

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 897
    iget v1, p0, Landroid/os/TransientEvent;->mVibId:I

    aput v1, v0, v2

    .line 899
    iget v1, p0, Landroid/os/TransientEvent;->mRelativeTime:I

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 900
    iget v1, p0, Landroid/os/TransientEvent;->mIntensity:I

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 901
    iget v1, p0, Landroid/os/TransientEvent;->mFreq:I

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 902
    iget v1, p0, Landroid/os/TransientEvent;->mDuration:I

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 903
    return-object v0
.end method
