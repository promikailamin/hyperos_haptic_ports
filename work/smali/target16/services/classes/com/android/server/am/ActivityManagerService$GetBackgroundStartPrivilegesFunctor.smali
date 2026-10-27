.class public Lcom/android/server/am/ActivityManagerService$GetBackgroundStartPrivilegesFunctor;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

.field public mUid:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 6581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6582
    sget-object v0, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$GetBackgroundStartPrivilegesFunctor;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerService$GetBackgroundStartPrivilegesFunctor;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/am/ProcessRecord;)V
    .registers 4

    .line 6597
    iget v0, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    iget v1, p0, Lcom/android/server/am/ActivityManagerService$GetBackgroundStartPrivilegesFunctor;->mUid:I

    if-ne v0, v1, :cond_12

    .line 6598
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$GetBackgroundStartPrivilegesFunctor;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    .line 6599
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getBackgroundStartPrivileges()Landroid/app/BackgroundStartPrivileges;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/BackgroundStartPrivileges;->merge(Landroid/app/BackgroundStartPrivileges;)Landroid/app/BackgroundStartPrivileges;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$GetBackgroundStartPrivilegesFunctor;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    :cond_12
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 6581
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService$GetBackgroundStartPrivilegesFunctor;->accept(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public getResult()Landroid/app/BackgroundStartPrivileges;
    .registers 1

    .line 6593
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$GetBackgroundStartPrivilegesFunctor;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    return-object p0
.end method

.method public prepare(I)V
    .registers 2

    .line 6587
    iput p1, p0, Lcom/android/server/am/ActivityManagerService$GetBackgroundStartPrivilegesFunctor;->mUid:I

    .line 6588
    sget-object p1, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$GetBackgroundStartPrivilegesFunctor;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    return-void
.end method
