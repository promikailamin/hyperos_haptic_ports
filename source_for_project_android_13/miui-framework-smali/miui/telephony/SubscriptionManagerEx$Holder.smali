.class Lmiui/telephony/SubscriptionManagerEx$Holder;
.super Ljava/lang/Object;
.source "SubscriptionManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/SubscriptionManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Holder"
.end annotation


# static fields
.field static final blacklist CONTEXT:Landroid/content/Context;

.field static final blacklist INSTANCE:Lmiui/telephony/SubscriptionManagerEx;

.field static final blacklist SUBSCRIPTION_MANAGER:Landroid/telephony/SubscriptionManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 115
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    sput-object v0, Lmiui/telephony/SubscriptionManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    .line 117
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    sput-object v0, Lmiui/telephony/SubscriptionManagerEx$Holder;->SUBSCRIPTION_MANAGER:Landroid/telephony/SubscriptionManager;

    .line 119
    new-instance v0, Lmiui/telephony/SubscriptionManagerEx;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/telephony/SubscriptionManagerEx;-><init>(Lmiui/telephony/SubscriptionManagerEx-IA;)V

    sput-object v0, Lmiui/telephony/SubscriptionManagerEx$Holder;->INSTANCE:Lmiui/telephony/SubscriptionManagerEx;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
