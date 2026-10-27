.class public final Lmiui/provider/ExtraTelephony$Mms$PreviewType;
.super Ljava/lang/Object;
.source "ExtraTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraTelephony$Mms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PreviewType"
.end annotation


# static fields
.field public static final blacklist AUDIO:I = 0x3

.field public static final blacklist IMAGE:I = 0x2

.field public static final blacklist NONE:I = 0x1

.field public static final blacklist SLIDESHOW:I = 0x6

.field public static final blacklist UNKNOWN:I = 0x0

.field public static final blacklist VCARD:I = 0x5

.field public static final blacklist VIDEO:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
