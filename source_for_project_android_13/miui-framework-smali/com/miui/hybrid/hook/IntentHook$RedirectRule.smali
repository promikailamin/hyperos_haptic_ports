.class Lcom/miui/hybrid/hook/IntentHook$RedirectRule;
.super Ljava/lang/Object;
.source "IntentHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/hybrid/hook/IntentHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RedirectRule"
.end annotation


# instance fields
.field blacklist callingPkg:Ljava/lang/String;

.field blacklist clsNameMap:Landroid/os/Bundle;

.field blacklist originDestPkg:Ljava/lang/String;

.field blacklist redirectPkg:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/miui/hybrid/hook/IntentHook$RedirectRule-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/miui/hybrid/hook/IntentHook$RedirectRule;-><init>()V

    return-void
.end method
