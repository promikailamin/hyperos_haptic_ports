.class public Lcom/android/server/am/AppErrorDialog$Data;
.super Ljava/lang/Object;
.source "AppErrorDialog.java"


# instance fields
.field public isRestartableForService:Z

.field public paste:Ljava/lang/String;

.field public proc:Lcom/android/server/am/ProcessRecord;

.field public repeating:Z

.field public result:Lcom/android/server/am/AppErrorResult;

.field public taskId:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
