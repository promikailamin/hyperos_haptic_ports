.class public Lcom/android/server/usb/UsbDeviceLogger$StringEvent;
.super Lcom/android/server/usb/UsbDeviceLogger$Event;
.source "UsbDeviceLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringEvent"
.end annotation


# instance fields
.field private final mMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 98
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceLogger$Event;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceLogger$StringEvent;->mMsg:Ljava/lang/String;

    .line 100
    return-void
.end method


# virtual methods
.method public eventToString()Ljava/lang/String;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceLogger$StringEvent;->mMsg:Ljava/lang/String;

    return-object v0
.end method
