.class public final Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "TelocationWorkerArgs"
.end annotation


# instance fields
.field public blacklist context:Landroid/content/Context;

.field public blacklist cookie1:Ljava/lang/Object;

.field public blacklist cookie2:Ljava/lang/Object;

.field public blacklist cookie3:Ljava/lang/Object;

.field public blacklist cookie4:Ljava/lang/Object;

.field public blacklist handler:Landroid/os/Handler;

.field public blacklist location:Ljava/lang/String;

.field public blacklist operator:Ljava/lang/String;

.field public blacklist operatorQueryListener:Lmiui/telephony/PhoneNumberUtils$OperatorQueryListener;

.field public blacklist phoneNumber:Ljava/lang/String;

.field public blacklist telocationAndOperatorQueryListener:Lmiui/telephony/PhoneNumberUtils$TelocationAndOperatorQueryListener;

.field public blacklist telocationQueryListener:Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;


# direct methods
.method protected constructor blacklist <init>()V
    .registers 1

    .line 900
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
