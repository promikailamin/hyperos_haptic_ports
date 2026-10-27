.class public Lmiui/security/CallerInfo;
.super Ljava/lang/Object;
.source "CallerInfo.java"


# instance fields
.field public blacklist callerPid:I

.field public blacklist callerPkg:Ljava/lang/String;

.field public blacklist callerProcessName:Ljava/lang/String;

.field public blacklist callerUid:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
