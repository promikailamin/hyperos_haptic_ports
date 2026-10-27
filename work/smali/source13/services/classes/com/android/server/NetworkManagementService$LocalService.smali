.class Lcom/android/server/NetworkManagementService$LocalService;
.super Lcom/android/server/NetworkManagementInternal;
.source "NetworkManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method private constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .registers 2

    .line 1832
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$LocalService;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Lcom/android/server/NetworkManagementInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$LocalService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService$LocalService;-><init>(Lcom/android/server/NetworkManagementService;)V

    return-void
.end method


# virtual methods
.method public isNetworkRestrictedForUid(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 1835
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$LocalService;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0, p1}, Lcom/android/server/NetworkManagementService;->-$$Nest$misNetworkRestrictedInternal(Lcom/android/server/NetworkManagementService;I)Z

    move-result v0

    return v0
.end method
