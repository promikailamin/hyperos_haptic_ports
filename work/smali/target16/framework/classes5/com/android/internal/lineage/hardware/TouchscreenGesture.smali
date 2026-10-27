.class public Lcom/android/internal/lineage/hardware/TouchscreenGesture;
.super Ljava/lang/Object;
.source "TouchscreenGesture.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/lineage/hardware/TouchscreenGesture;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist id:I

.field public final blacklist keycode:I

.field public final blacklist name:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 66
    new-instance v0, Lcom/android/internal/lineage/hardware/TouchscreenGesture$1;

    invoke-direct {v0}, Lcom/android/internal/lineage/hardware/TouchscreenGesture$1;-><init>()V

    sput-object v0, Lcom/android/internal/lineage/hardware/TouchscreenGesture;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;I)V
    .registers 4

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/android/internal/lineage/hardware/TouchscreenGesture;->id:I

    .line 49
    iput-object p2, p0, Lcom/android/internal/lineage/hardware/TouchscreenGesture;->name:Ljava/lang/String;

    .line 50
    iput p3, p0, Lcom/android/internal/lineage/hardware/TouchscreenGesture;->keycode:I

    .line 51
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 60
    iget p2, p0, Lcom/android/internal/lineage/hardware/TouchscreenGesture;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget-object p2, p0, Lcom/android/internal/lineage/hardware/TouchscreenGesture;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget p2, p0, Lcom/android/internal/lineage/hardware/TouchscreenGesture;->keycode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    return-void
.end method
