.class public final Landroid/bluetooth/BluetoothMasInstance$MessageType;
.super Ljava/lang/Object;
.source "BluetoothMasInstance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothMasInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageType"
.end annotation


# static fields
.field public static final greylist-max-o EMAIL:I = 0x1

.field public static final greylist-max-o MMS:I = 0x8

.field public static final greylist-max-o SMS_CDMA:I = 0x4

.field public static final greylist-max-o SMS_GSM:I = 0x2


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
