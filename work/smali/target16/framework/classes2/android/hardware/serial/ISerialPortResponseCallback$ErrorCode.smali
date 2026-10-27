.class public interface abstract annotation Landroid/hardware/serial/ISerialPortResponseCallback$ErrorCode;
.super Ljava/lang/Object;
.source "ISerialPortResponseCallback.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/serial/ISerialPortResponseCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ErrorCode"
.end annotation


# static fields
.field public static final blacklist ERROR_ACCESS_DENIED:I = 0x1

.field public static final blacklist ERROR_OPENING_PORT:I = 0x2

.field public static final blacklist ERROR_PORT_NOT_FOUND:I
