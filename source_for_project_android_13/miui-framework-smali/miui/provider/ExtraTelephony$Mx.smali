.class public final Lmiui/provider/ExtraTelephony$Mx;
.super Ljava/lang/Object;
.source "ExtraTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mx"
.end annotation


# static fields
.field public static final blacklist TYPE_COMMON:I = 0x0

.field public static final blacklist TYPE_DELIVERED:I = 0x11

.field public static final blacklist TYPE_FAILED:I = 0x20001

.field public static final blacklist TYPE_INCOMING:I = 0x10001

.field public static final blacklist TYPE_PENDING:I = 0x1

.field public static final blacklist TYPE_READ:I = 0x100

.field public static final blacklist TYPE_SENT:I = 0x10

.field public static final blacklist TYPE_WEB:I = 0x30001


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
