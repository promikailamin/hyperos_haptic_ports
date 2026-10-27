.class public Lcom/android/server/incident/PendingReports$Injector;
.super Ljava/lang/Object;
.source "PendingReports.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/android/server/incident/PendingReports$Injector;->mContext:Landroid/content/Context;

    .line 138
    iput-object p2, p0, Lcom/android/server/incident/PendingReports$Injector;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public getAppOpsManager()Landroid/app/AppOpsManager;
    .registers 2

    .line 154
    iget-object p0, p0, Lcom/android/server/incident/PendingReports$Injector;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .line 142
    iget-object p0, p0, Lcom/android/server/incident/PendingReports$Injector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getCurrentUserIfAdmin()I
    .registers 1

    .line 162
    invoke-static {}, Lcom/android/server/incident/IncidentCompanionService;->getCurrentUserIfAdmin()I

    move-result p0

    return p0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 1

    .line 146
    iget-object p0, p0, Lcom/android/server/incident/PendingReports$Injector;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getUserManager()Landroid/os/UserManager;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/android/server/incident/PendingReports$Injector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    return-object p0
.end method
