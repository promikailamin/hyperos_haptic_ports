.class public Landroid/os/perfdebug/VsyncFrameImpl;
.super Landroid/os/perfdebug/VsyncFrame;
.source "VsyncFrameImpl.java"


# static fields
.field private static final blacklist sInstance:Landroid/os/perfdebug/VsyncFrameImpl;


# instance fields
.field private blacklist mCurFrame:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 12
    new-instance v0, Landroid/os/perfdebug/VsyncFrameImpl;

    invoke-direct {v0}, Landroid/os/perfdebug/VsyncFrameImpl;-><init>()V

    sput-object v0, Landroid/os/perfdebug/VsyncFrameImpl;->sInstance:Landroid/os/perfdebug/VsyncFrameImpl;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Landroid/os/perfdebug/VsyncFrame;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/perfdebug/VsyncFrameImpl;->mCurFrame:I

    return-void
.end method

.method public static blacklist getInstance()Landroid/os/perfdebug/VsyncFrameImpl;
    .registers 1

    .line 17
    sget-object v0, Landroid/os/perfdebug/VsyncFrameImpl;->sInstance:Landroid/os/perfdebug/VsyncFrameImpl;

    return-object v0
.end method


# virtual methods
.method public blacklist getCurFrame()I
    .registers 2

    .line 26
    iget v0, p0, Landroid/os/perfdebug/VsyncFrameImpl;->mCurFrame:I

    return v0
.end method

.method public blacklist updateCurFrame(I)V
    .registers 2
    .param p1, "frame"    # I

    .line 22
    iput p1, p0, Landroid/os/perfdebug/VsyncFrameImpl;->mCurFrame:I

    .line 23
    return-void
.end method
