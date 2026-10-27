.class public final Lmiui/provider/ExtraTelephony$Phonelist$SyncDirty;
.super Ljava/lang/Object;
.source "ExtraTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraTelephony$Phonelist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncDirty"
.end annotation


# static fields
.field public static final blacklist ADD:I = 0x0

.field public static final blacklist DELETE:I = 0x1

.field public static final blacklist SYNCED:I = 0x3

.field public static final blacklist UPDATE:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 2191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
