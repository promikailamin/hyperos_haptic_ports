.class public Lcom/android/server/appbinding/finders/AppServiceFinder$TargetServiceInfo;
.super Ljava/lang/Object;
.source "AppServiceFinder.java"


# instance fields
.field public final lastMessage:Ljava/lang/String;

.field public final serviceInfo:Landroid/content/pm/ServiceInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/ServiceInfo;Ljava/lang/String;)V
    .registers 3

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/android/server/appbinding/finders/AppServiceFinder$TargetServiceInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 88
    iput-object p2, p0, Lcom/android/server/appbinding/finders/AppServiceFinder$TargetServiceInfo;->lastMessage:Ljava/lang/String;

    return-void
.end method
