.class public final Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# instance fields
.field public final bypass:Landroid/app/AppOpsManager$RestrictionBypass;

.field public final isAttributionTagValid:Z


# direct methods
.method public constructor <init>(Landroid/app/AppOpsManager$RestrictionBypass;Z)V
    .registers 3

    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 646
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    .line 647
    iput-boolean p2, p0, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z

    return-void
.end method
