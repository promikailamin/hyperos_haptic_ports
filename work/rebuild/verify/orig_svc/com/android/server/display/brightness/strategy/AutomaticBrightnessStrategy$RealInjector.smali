.class public Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy$RealInjector;
.super Ljava/lang/Object;
.source "AutomaticBrightnessStrategy.java"

# interfaces
.implements Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy$Injector;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBrightnessEvent(I)Lcom/android/server/display/brightness/BrightnessEvent;
    .registers 2

    .line 578
    new-instance p0, Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-direct {p0, p1}, Lcom/android/server/display/brightness/BrightnessEvent;-><init>(I)V

    return-object p0
.end method
