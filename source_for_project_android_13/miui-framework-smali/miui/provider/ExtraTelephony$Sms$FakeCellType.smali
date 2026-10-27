.class public final Lmiui/provider/ExtraTelephony$Sms$FakeCellType;
.super Ljava/lang/Object;
.source "ExtraTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraTelephony$Sms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FakeCellType"
.end annotation


# static fields
.field public static final blacklist CHECKED_SAFE:I = -0x1

.field public static final blacklist FAKE:I = 0x1

.field public static final blacklist NORMAL:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
