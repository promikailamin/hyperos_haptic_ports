.class public Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;
.super Ljava/lang/Object;
.source "UsbAlsaManager.java"


# instance fields
.field public final mFlags:I

.field public final mProductId:I

.field public final mVendorId:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput p1, p0, Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;->mVendorId:I

    .line 111
    iput p2, p0, Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;->mProductId:I

    .line 112
    iput p3, p0, Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;->mFlags:I

    return-void
.end method
