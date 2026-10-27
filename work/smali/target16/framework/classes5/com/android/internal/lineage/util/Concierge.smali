.class public final Lcom/android/internal/lineage/util/Concierge;
.super Ljava/lang/Object;
.source "Concierge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/lineage/util/Concierge$ParcelInfo;
    }
.end annotation


# static fields
.field public static final blacklist PARCELABLE_VERSION:I = 0x9


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static blacklist prepareParcel(Landroid/os/Parcel;)Lcom/android/internal/lineage/util/Concierge$ParcelInfo;
    .registers 3

    .line 88
    new-instance v0, Lcom/android/internal/lineage/util/Concierge$ParcelInfo;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Lcom/android/internal/lineage/util/Concierge$ParcelInfo;-><init>(Landroid/os/Parcel;I)V

    return-object v0
.end method

.method public static blacklist receiveParcel(Landroid/os/Parcel;)Lcom/android/internal/lineage/util/Concierge$ParcelInfo;
    .registers 2

    .line 76
    new-instance v0, Lcom/android/internal/lineage/util/Concierge$ParcelInfo;

    invoke-direct {v0, p0}, Lcom/android/internal/lineage/util/Concierge$ParcelInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method
