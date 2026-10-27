.class final Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
.super Ljava/lang/Object;
.source "InputController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/companion/virtual/InputController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InputDeviceDescriptor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor$Type;
    }
.end annotation


# static fields
.field static final TYPE_KEYBOARD:I = 0x1

.field static final TYPE_MOUSE:I = 0x2

.field static final TYPE_TOUCHSCREEN:I = 0x3

.field private static final sNextCreationOrderNumber:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final mCreationOrderNumber:J

.field private final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final mDisplayId:I

.field private final mFd:I

.field private final mPhys:Ljava/lang/String;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 445
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->sNextCreationOrderNumber:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder$DeathRecipient;IILjava/lang/String;)V
    .registers 8
    .param p1, "fd"    # I
    .param p2, "deathRecipient"    # Landroid/os/IBinder$DeathRecipient;
    .param p3, "type"    # I
    .param p4, "displayId"    # I
    .param p5, "phys"    # Ljava/lang/String;

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    iput p1, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mFd:I

    .line 458
    iput-object p2, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 459
    iput p3, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mType:I

    .line 460
    iput p4, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mDisplayId:I

    .line 461
    iput-object p5, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mPhys:Ljava/lang/String;

    .line 462
    sget-object v0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->sNextCreationOrderNumber:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mCreationOrderNumber:J

    .line 463
    return-void
.end method


# virtual methods
.method public getCreationOrderNumber()J
    .registers 3

    .line 486
    iget-wide v0, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mCreationOrderNumber:J

    return-wide v0
.end method

.method public getDeathRecipient()Landroid/os/IBinder$DeathRecipient;
    .registers 2

    .line 478
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object v0
.end method

.method public getDisplayId()I
    .registers 2

    .line 482
    iget v0, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mDisplayId:I

    return v0
.end method

.method public getFileDescriptor()I
    .registers 2

    .line 466
    iget v0, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mFd:I

    return v0
.end method

.method public getPhys()Ljava/lang/String;
    .registers 2

    .line 490
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mPhys:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 470
    iget v0, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mType:I

    return v0
.end method

.method public isMouse()Z
    .registers 3

    .line 474
    iget v0, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method
