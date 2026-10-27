.class public Lmiui/provider/ExtraTelephony$AdvancedSeen;
.super Ljava/lang/Object;
.source "ExtraTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdvancedSeen"
.end annotation


# static fields
.field public static final blacklist NON_SP_UNSEEN:I = 0x0

.field public static final blacklist SEEN:I = 0x3

.field public static final blacklist SP_NOTIFIED:I = 0x2

.field public static final blacklist SP_UNSEEN:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 707
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
