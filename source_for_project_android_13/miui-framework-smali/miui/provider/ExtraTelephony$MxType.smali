.class public Lmiui/provider/ExtraTelephony$MxType;
.super Ljava/lang/Object;
.source "ExtraTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MxType"
.end annotation


# static fields
.field public static final blacklist AUDIO:I = 0x3

.field public static final blacklist IMAGE:I = 0x2

.field public static final blacklist MMS:I = 0x1

.field public static final blacklist NONE_MX:I = 0x0

.field public static final blacklist RED:I = 0x5

.field public static final blacklist VIDEO:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
