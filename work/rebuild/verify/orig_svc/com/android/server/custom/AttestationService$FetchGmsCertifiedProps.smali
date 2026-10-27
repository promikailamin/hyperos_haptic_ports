.class public Lcom/android/server/custom/AttestationService$FetchGmsCertifiedProps;
.super Ljava/lang/Object;
.source "AttestationService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/custom/AttestationService;


# direct methods
.method public constructor <init>(Lcom/android/server/custom/AttestationService;)V
    .registers 2

    .line 121
    iput-object p1, p0, Lcom/android/server/custom/AttestationService$FetchGmsCertifiedProps;->this$0:Lcom/android/server/custom/AttestationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/custom/AttestationService;Lcom/android/server/custom/AttestationService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/custom/AttestationService$FetchGmsCertifiedProps;-><init>(Lcom/android/server/custom/AttestationService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 125
    const-string v0, "fetched_pif"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/custom/AttestationService$FetchGmsCertifiedProps;->this$0:Lcom/android/server/custom/AttestationService;

    const-string v2, "FetchGmsCertifiedProps started"

    invoke-static {v1, v2}, Lcom/android/server/custom/AttestationService;->-$$Nest$mdlog(Lcom/android/server/custom/AttestationService;Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/android/server/custom/AttestationService$FetchGmsCertifiedProps;->this$0:Lcom/android/server/custom/AttestationService;

    invoke-static {v1}, Lcom/android/server/custom/AttestationService;->-$$Nest$misInternetConnected(Lcom/android/server/custom/AttestationService;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 128
    invoke-static {}, Lcom/android/server/custom/AttestationService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Internet unavailable"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 132
    :cond_1b
    iget-object v1, p0, Lcom/android/server/custom/AttestationService$FetchGmsCertifiedProps;->this$0:Lcom/android/server/custom/AttestationService;

    invoke-static {v1}, Lcom/android/server/custom/AttestationService;->-$$Nest$fgetmContext(Lcom/android/server/custom/AttestationService;)Landroid/content/Context;

    move-result-object v1

    .line 133
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 132
    invoke-static {v1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 134
    iget-object v2, p0, Lcom/android/server/custom/AttestationService$FetchGmsCertifiedProps;->this$0:Lcom/android/server/custom/AttestationService;

    invoke-static {v2}, Lcom/android/server/custom/AttestationService;->-$$Nest$mfetchProps(Lcom/android/server/custom/AttestationService;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_53

    .line 136
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 137
    iget-object v1, p0, Lcom/android/server/custom/AttestationService$FetchGmsCertifiedProps;->this$0:Lcom/android/server/custom/AttestationService;

    const-string v3, "Found new props"

    invoke-static {v1, v3}, Lcom/android/server/custom/AttestationService;->-$$Nest$mdlog(Lcom/android/server/custom/AttestationService;Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/android/server/custom/AttestationService$FetchGmsCertifiedProps;->this$0:Lcom/android/server/custom/AttestationService;

    invoke-static {v1}, Lcom/android/server/custom/AttestationService;->-$$Nest$fgetmContext(Lcom/android/server/custom/AttestationService;)Landroid/content/Context;

    move-result-object v1

    .line 139
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 138
    invoke-static {v1, v0, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 140
    iget-object p0, p0, Lcom/android/server/custom/AttestationService$FetchGmsCertifiedProps;->this$0:Lcom/android/server/custom/AttestationService;

    const-string v0, "FetchGmsCertifiedProps completed"

    invoke-static {p0, v0}, Lcom/android/server/custom/AttestationService;->-$$Nest$mdlog(Lcom/android/server/custom/AttestationService;Ljava/lang/String;)V

    return-void

    .line 142
    :cond_53
    iget-object p0, p0, Lcom/android/server/custom/AttestationService$FetchGmsCertifiedProps;->this$0:Lcom/android/server/custom/AttestationService;

    const-string v0, "No change in props"

    invoke-static {p0, v0}, Lcom/android/server/custom/AttestationService;->-$$Nest$mdlog(Lcom/android/server/custom/AttestationService;Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5a} :catch_5b

    return-void

    :catch_5b
    move-exception p0

    .line 145
    invoke-static {}, Lcom/android/server/custom/AttestationService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error in FetchGmsCertifiedProps"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
