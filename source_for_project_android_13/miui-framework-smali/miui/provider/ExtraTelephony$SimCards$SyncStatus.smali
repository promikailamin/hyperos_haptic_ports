.class public final Lmiui/provider/ExtraTelephony$SimCards$SyncStatus;
.super Ljava/lang/Object;
.source "ExtraTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraTelephony$SimCards;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncStatus"
.end annotation


# static fields
.field public static final blacklist ACTIVE:I = 0x1

.field public static final blacklist CLOSED:I = 0x2

.field public static final blacklist DIRTY_MASK:I = 0x2710

.field public static final blacklist INACTIVE:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1058
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
