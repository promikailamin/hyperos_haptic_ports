.class public Lcom/android/server/input/KeyGestureController$TakeScreenshotData;
.super Ljava/lang/Object;
.source "KeyGestureController.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field public displayId:I

.field public source:I

.field public type:I


# direct methods
.method public constructor <init>(Lcom/android/server/input/KeyGestureController;III)V
    .registers 5

    .line 1837
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1838
    iput p2, p0, Lcom/android/server/input/KeyGestureController$TakeScreenshotData;->source:I

    .line 1839
    iput p3, p0, Lcom/android/server/input/KeyGestureController$TakeScreenshotData;->type:I

    .line 1840
    iput p4, p0, Lcom/android/server/input/KeyGestureController$TakeScreenshotData;->displayId:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1850
    iget p2, p0, Lcom/android/server/input/KeyGestureController$TakeScreenshotData;->source:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1851
    iget p2, p0, Lcom/android/server/input/KeyGestureController$TakeScreenshotData;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1852
    iget p0, p0, Lcom/android/server/input/KeyGestureController$TakeScreenshotData;->displayId:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
