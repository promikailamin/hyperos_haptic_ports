.class Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor$1;
.super Ljava/lang/Object;
.source "SmsApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    .line 831
    iput-object p1, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 2

    .line 834
    iget-object v0, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->handlePackageChanged()V

    .line 835
    return-void
.end method
