.class public Landroid/accessibilityservice/GestureDescription$GestureStep;
.super Ljava/lang/Object;
.source "GestureDescription.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/GestureDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GestureStep"
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/accessibilityservice/GestureDescription$GestureStep;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public greylist-max-o numTouchPoints:I

.field public greylist-max-o timeSinceGestureStart:J

.field public greylist-max-o touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 547
    new-instance v0, Landroid/accessibilityservice/GestureDescription$GestureStep$1;

    invoke-direct {v0}, Landroid/accessibilityservice/GestureDescription$GestureStep$1;-><init>()V

    sput-object v0, Landroid/accessibilityservice/GestureDescription$GestureStep;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(JI[Landroid/accessibilityservice/GestureDescription$TouchPoint;)V
    .registers 7

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    iput-wide p1, p0, Landroid/accessibilityservice/GestureDescription$GestureStep;->timeSinceGestureStart:J

    .line 518
    iput p3, p0, Landroid/accessibilityservice/GestureDescription$GestureStep;->numTouchPoints:I

    .line 519
    new-array p1, p3, [Landroid/accessibilityservice/GestureDescription$TouchPoint;

    iput-object p1, p0, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 520
    const/4 p1, 0x0

    :goto_c
    if-ge p1, p3, :cond_1c

    .line 521
    iget-object p2, p0, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    new-instance v0, Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object v1, p4, p1

    invoke-direct {v0, v1}, Landroid/accessibilityservice/GestureDescription$TouchPoint;-><init>(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V

    aput-object v0, p2, p1

    .line 520
    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    .line 523
    :cond_1c
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 526
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/accessibilityservice/GestureDescription$GestureStep;->timeSinceGestureStart:J

    .line 527
    const-class v0, Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 528
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/accessibilityservice/GestureDescription$TouchPoint;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/os/Parcelable;

    .line 529
    const/4 v0, 0x0

    if-nez p1, :cond_1c

    move v1, v0

    goto :goto_1d

    :cond_1c
    array-length v1, p1

    :goto_1d
    iput v1, p0, Landroid/accessibilityservice/GestureDescription$GestureStep;->numTouchPoints:I

    .line 530
    iget v1, p0, Landroid/accessibilityservice/GestureDescription$GestureStep;->numTouchPoints:I

    new-array v1, v1, [Landroid/accessibilityservice/GestureDescription$TouchPoint;

    iput-object v1, p0, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 531
    nop

    :goto_26
    iget v1, p0, Landroid/accessibilityservice/GestureDescription$GestureStep;->numTouchPoints:I

    if-ge v0, v1, :cond_35

    .line 532
    iget-object v1, p0, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object v2, p1, v0

    check-cast v2, Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aput-object v2, v1, v0

    .line 531
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 534
    :cond_35
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 538
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 543
    iget-wide v0, p0, Landroid/accessibilityservice/GestureDescription$GestureStep;->timeSinceGestureStart:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 544
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 545
    return-void
.end method
