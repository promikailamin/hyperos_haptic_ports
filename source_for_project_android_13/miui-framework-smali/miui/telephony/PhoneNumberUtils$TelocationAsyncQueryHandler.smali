.class Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/PhoneNumberUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TelocationAsyncQueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerHandler;,
        Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;,
        Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$SingletonHolder;
    }
.end annotation


# static fields
.field private static final blacklist EVENT_QUERY_OPERATOR:I = 0x14

.field private static final blacklist EVENT_QUERY_TELOCATION:I = 0xa

.field private static final blacklist EVENT_QUERY_TELOCATION_AND_OPERATOR:I = 0x1e


# instance fields
.field private blacklist mWorkerHandler:Landroid/os/Handler;


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 943
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 944
    return-void
.end method

.method synthetic constructor blacklist <init>(Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler-IA;)V
    .registers 2

    invoke-direct {p0}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;
    .registers 1

    .line 878
    invoke-static {}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$SingletonHolder;->-$$Nest$sfgetINSTANCE()Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist queryOperator(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/CharSequence;

    .line 894
    invoke-static {p0, p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getOperator(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist queryTelocation(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/CharSequence;

    .line 890
    invoke-static {p0, p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getLocation(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist sendMsg(Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;)V
    .registers 11
    .param p1, "args"    # Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;
    .param p2, "arg1"    # I
    .param p3, "token"    # I
    .param p4, "cookie1"    # Ljava/lang/Object;
    .param p5, "cookie2"    # Ljava/lang/Object;
    .param p6, "cookie3"    # Ljava/lang/Object;
    .param p7, "cookie4"    # Ljava/lang/Object;
    .param p8, "context"    # Landroid/content/Context;
    .param p9, "phoneNumber"    # Ljava/lang/String;

    .line 1016
    iput-object p0, p1, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->handler:Landroid/os/Handler;

    .line 1017
    iput-object p8, p1, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->context:Landroid/content/Context;

    .line 1018
    iput-object p9, p1, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->phoneNumber:Ljava/lang/String;

    .line 1019
    iput-object p4, p1, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie1:Ljava/lang/Object;

    .line 1020
    iput-object p5, p1, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie2:Ljava/lang/Object;

    .line 1021
    iput-object p6, p1, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie3:Ljava/lang/Object;

    .line 1022
    iput-object p7, p1, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie4:Ljava/lang/Object;

    .line 1023
    const/4 v0, 0x0

    iput-object v0, p1, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->location:Ljava/lang/String;

    .line 1025
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v0, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1026
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1027
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1028
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1029
    return-void
.end method


# virtual methods
.method protected whitelist createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .registers 3
    .param p1, "looper"    # Landroid/os/Looper;

    .line 948
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->mWorkerHandler:Landroid/os/Handler;

    if-nez v0, :cond_b

    .line 949
    new-instance v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerHandler;

    invoke-direct {v0, p0, p1}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerHandler;-><init>(Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->mWorkerHandler:Landroid/os/Handler;

    .line 951
    :cond_b
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->mWorkerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 1033
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;

    .line 1034
    .local v0, "args":Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1e

    iget-object v1, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->telocationQueryListener:Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;

    if-eqz v1, :cond_1e

    .line 1035
    iget-object v2, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->telocationQueryListener:Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;

    iget-object v3, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie1:Ljava/lang/Object;

    iget-object v4, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie2:Ljava/lang/Object;

    iget-object v5, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie3:Ljava/lang/Object;

    iget-object v6, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie4:Ljava/lang/Object;

    iget-object v7, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->location:Ljava/lang/String;

    invoke-interface/range {v2 .. v7}, Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;->onComplete(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_53

    .line 1037
    :cond_1e
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_38

    iget-object v1, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->operatorQueryListener:Lmiui/telephony/PhoneNumberUtils$OperatorQueryListener;

    if-eqz v1, :cond_38

    .line 1038
    iget-object v2, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->operatorQueryListener:Lmiui/telephony/PhoneNumberUtils$OperatorQueryListener;

    iget-object v3, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie1:Ljava/lang/Object;

    iget-object v4, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie2:Ljava/lang/Object;

    iget-object v5, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie3:Ljava/lang/Object;

    iget-object v6, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie4:Ljava/lang/Object;

    iget-object v7, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->operator:Ljava/lang/String;

    invoke-interface/range {v2 .. v7}, Lmiui/telephony/PhoneNumberUtils$OperatorQueryListener;->onComplete(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_53

    .line 1040
    :cond_38
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_53

    iget-object v1, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->telocationAndOperatorQueryListener:Lmiui/telephony/PhoneNumberUtils$TelocationAndOperatorQueryListener;

    if-eqz v1, :cond_53

    .line 1041
    iget-object v2, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->telocationAndOperatorQueryListener:Lmiui/telephony/PhoneNumberUtils$TelocationAndOperatorQueryListener;

    iget-object v3, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie1:Ljava/lang/Object;

    iget-object v4, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie2:Ljava/lang/Object;

    iget-object v5, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie3:Ljava/lang/Object;

    iget-object v6, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie4:Ljava/lang/Object;

    iget-object v7, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->location:Ljava/lang/String;

    iget-object v8, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->operator:Ljava/lang/String;

    invoke-interface/range {v2 .. v8}, Lmiui/telephony/PhoneNumberUtils$TelocationAndOperatorQueryListener;->onComplete(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    :cond_53
    :goto_53
    return-void
.end method

.method public blacklist startQueryOperatorString(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lmiui/telephony/PhoneNumberUtils$OperatorQueryListener;Landroid/content/Context;Ljava/lang/String;)V
    .registers 21
    .param p1, "token"    # I
    .param p2, "cookie1"    # Ljava/lang/Object;
    .param p3, "cookie2"    # Ljava/lang/Object;
    .param p4, "cookie3"    # Ljava/lang/Object;
    .param p5, "cookie4"    # Ljava/lang/Object;
    .param p6, "listener"    # Lmiui/telephony/PhoneNumberUtils$OperatorQueryListener;
    .param p7, "context"    # Landroid/content/Context;
    .param p8, "phoneNumber"    # Ljava/lang/String;

    .line 989
    new-instance v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;

    invoke-direct {v0}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;-><init>()V

    .line 990
    .local v0, "args":Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;
    move-object/from16 v11, p6

    iput-object v11, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->operatorQueryListener:Lmiui/telephony/PhoneNumberUtils$OperatorQueryListener;

    .line 991
    const/16 v3, 0x14

    move-object v1, p0

    move-object v2, v0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->sendMsg(Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;)V

    .line 992
    return-void
.end method

.method public blacklist startQueryTelocationAndOperatorString(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lmiui/telephony/PhoneNumberUtils$TelocationAndOperatorQueryListener;Landroid/content/Context;Ljava/lang/String;)V
    .registers 21
    .param p1, "token"    # I
    .param p2, "cookie1"    # Ljava/lang/Object;
    .param p3, "cookie2"    # Ljava/lang/Object;
    .param p4, "cookie3"    # Ljava/lang/Object;
    .param p5, "cookie4"    # Ljava/lang/Object;
    .param p6, "listener"    # Lmiui/telephony/PhoneNumberUtils$TelocationAndOperatorQueryListener;
    .param p7, "context"    # Landroid/content/Context;
    .param p8, "phoneNumber"    # Ljava/lang/String;

    .line 1009
    new-instance v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;

    invoke-direct {v0}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;-><init>()V

    .line 1010
    .local v0, "args":Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;
    move-object/from16 v11, p6

    iput-object v11, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->telocationAndOperatorQueryListener:Lmiui/telephony/PhoneNumberUtils$TelocationAndOperatorQueryListener;

    .line 1011
    const/16 v3, 0x1e

    move-object v1, p0

    move-object v2, v0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->sendMsg(Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;)V

    .line 1012
    return-void
.end method

.method public blacklist startQueryTelocationString(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;Landroid/content/Context;Ljava/lang/String;)V
    .registers 21
    .param p1, "token"    # I
    .param p2, "cookie1"    # Ljava/lang/Object;
    .param p3, "cookie2"    # Ljava/lang/Object;
    .param p4, "cookie3"    # Ljava/lang/Object;
    .param p5, "cookie4"    # Ljava/lang/Object;
    .param p6, "listener"    # Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;
    .param p7, "context"    # Landroid/content/Context;
    .param p8, "phoneNumber"    # Ljava/lang/String;

    .line 969
    new-instance v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;

    invoke-direct {v0}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;-><init>()V

    .line 970
    .local v0, "args":Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;
    move-object/from16 v11, p6

    iput-object v11, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->telocationQueryListener:Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;

    .line 971
    const/16 v3, 0xa

    move-object v1, p0

    move-object v2, v0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->sendMsg(Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;)V

    .line 972
    return-void
.end method
