.class public interface abstract Lcom/android/server/accessibility/AccessibilityStateListenerStub;
.super Ljava/lang/Object;
.source "AccessibilityStateListenerStub.java"


# static fields
.field public static final sInstance:Lcom/android/server/accessibility/AccessibilityStateListenerStub;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 14
    const-class v0, Lcom/android/server/accessibility/AccessibilityStateListenerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityStateListenerStub;

    sput-object v0, Lcom/android/server/accessibility/AccessibilityStateListenerStub;->sInstance:Lcom/android/server/accessibility/AccessibilityStateListenerStub;

    return-void
.end method

.method public static getInstance()Lcom/android/server/accessibility/AccessibilityStateListenerStub;
    .registers 1

    .line 18
    sget-object v0, Lcom/android/server/accessibility/AccessibilityStateListenerStub;->sInstance:Lcom/android/server/accessibility/AccessibilityStateListenerStub;

    return-object v0
.end method


# virtual methods
.method public abstract sendStateToClients(Landroid/content/Context;I)V
.end method
