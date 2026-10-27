.class public final Landroid/hardware/display/DisplayedContentSample;
.super Ljava/lang/Object;
.source "DisplayedContentSample.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/DisplayedContentSample$ColorComponent;
    }
.end annotation


# instance fields
.field private blacklist mNumFrames:J

.field private blacklist mSamplesComponent0:[J

.field private blacklist mSamplesComponent1:[J

.field private blacklist mSamplesComponent2:[J

.field private blacklist mSamplesComponent3:[J


# direct methods
.method public constructor blacklist <init>(J[J[J[J[J)V
    .registers 7

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-wide p1, p0, Landroid/hardware/display/DisplayedContentSample;->mNumFrames:J

    .line 54
    iput-object p3, p0, Landroid/hardware/display/DisplayedContentSample;->mSamplesComponent0:[J

    .line 55
    iput-object p4, p0, Landroid/hardware/display/DisplayedContentSample;->mSamplesComponent1:[J

    .line 56
    iput-object p5, p0, Landroid/hardware/display/DisplayedContentSample;->mSamplesComponent2:[J

    .line 57
    iput-object p6, p0, Landroid/hardware/display/DisplayedContentSample;->mSamplesComponent3:[J

    .line 58
    return-void
.end method


# virtual methods
.method public blacklist getNumFrames()J
    .registers 3

    .line 94
    iget-wide v0, p0, Landroid/hardware/display/DisplayedContentSample;->mNumFrames:J

    return-wide v0
.end method

.method public blacklist getSampleComponent(Landroid/hardware/display/DisplayedContentSample$ColorComponent;)[J
    .registers 2

    .line 79
    invoke-virtual {p1}, Landroid/hardware/display/DisplayedContentSample$ColorComponent;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_1a

    .line 84
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1

    .line 83
    :pswitch_d
    iget-object p1, p0, Landroid/hardware/display/DisplayedContentSample;->mSamplesComponent3:[J

    return-object p1

    .line 82
    :pswitch_10
    iget-object p1, p0, Landroid/hardware/display/DisplayedContentSample;->mSamplesComponent2:[J

    return-object p1

    .line 81
    :pswitch_13
    iget-object p1, p0, Landroid/hardware/display/DisplayedContentSample;->mSamplesComponent1:[J

    return-object p1

    .line 80
    :pswitch_16
    iget-object p1, p0, Landroid/hardware/display/DisplayedContentSample;->mSamplesComponent0:[J

    return-object p1

    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method
