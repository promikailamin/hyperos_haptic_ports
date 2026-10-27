.class public Landroid/hardware/face/FaceManager;
.super Ljava/lang/Object;
.source "FaceManager.java"

# interfaces
.implements Landroid/hardware/biometrics/BiometricAuthenticator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/face/FaceManager$AuthenticationCallback;,
        Landroid/hardware/face/FaceManager$FaceServiceReceiver;,
        Landroid/hardware/face/FaceManager$OnAuthenticationCancelListener;,
        Landroid/hardware/face/FaceManager$FaceDetectionCallback;,
        Landroid/hardware/face/FaceManager$OnFaceDetectionCancelListener;,
        Landroid/hardware/face/FaceManager$EnrollmentCallback;,
        Landroid/hardware/face/FaceManager$OnEnrollCancelListener;,
        Landroid/hardware/face/FaceManager$GenerateChallengeCallback;,
        Landroid/hardware/face/FaceManager$SetFeatureCallback;,
        Landroid/hardware/face/FaceManager$GetFeatureCallback;,
        Landroid/hardware/face/FaceManager$RemovalCallback;,
        Landroid/hardware/face/FaceManager$LockoutResetCallback;,
        Landroid/hardware/face/FaceManager$AuthenticationResult;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "FaceManager"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mExecutor:Landroid/os/HandlerExecutor;

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mProps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/face/FaceSensorPropertiesInternal;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mService:Landroid/hardware/face/IFaceService;

.field private final blacklist mToken:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/hardware/face/FaceManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/hardware/face/FaceManager;)Landroid/os/HandlerExecutor;
    .registers 1

    iget-object p0, p0, Landroid/hardware/face/FaceManager;->mExecutor:Landroid/os/HandlerExecutor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/hardware/face/FaceManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/hardware/face/FaceManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmProps(Landroid/hardware/face/FaceManager;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/face/FaceManager;->mProps:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelAuthentication(Landroid/hardware/face/FaceManager;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/face/FaceManager;->cancelAuthentication(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelEnrollment(Landroid/hardware/face/FaceManager;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/face/FaceManager;->cancelEnrollment(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelFaceDetect(Landroid/hardware/face/FaceManager;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/face/FaceManager;->cancelFaceDetect(J)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/hardware/face/IFaceService;)V
    .registers 4

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/face/FaceManager;->mProps:Ljava/util/List;

    .line 191
    iput-object p1, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 192
    iput-object p2, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    .line 193
    iget-object p2, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-nez p2, :cond_20

    .line 194
    const-string p2, "FaceManager"

    const-string v0, "FaceAuthenticationManagerService was null"

    invoke-static {p2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_20
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p2

    iput-object p2, p0, Landroid/hardware/face/FaceManager;->mHandler:Landroid/os/Handler;

    .line 197
    new-instance p2, Landroid/os/HandlerExecutor;

    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p2, v0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Landroid/hardware/face/FaceManager;->mExecutor:Landroid/os/HandlerExecutor;

    .line 198
    const-string p2, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {p1, p2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_3f

    .line 200
    new-instance p1, Landroid/hardware/face/FaceManager$1;

    invoke-direct {p1, p0}, Landroid/hardware/face/FaceManager$1;-><init>(Landroid/hardware/face/FaceManager;)V

    invoke-virtual {p0, p1}, Landroid/hardware/face/FaceManager;->addAuthenticatorsRegisteredCallback(Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback;)V

    .line 208
    :cond_3f
    return-void
.end method

.method private blacklist cancelAuthentication(J)V
    .registers 6

    .line 874
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_18

    .line 876
    :try_start_4
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1, p2}, Landroid/hardware/face/IFaceService;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;J)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    .line 879
    goto :goto_18

    .line 877
    :catch_12
    move-exception p1

    .line 878
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 881
    :cond_18
    :goto_18
    return-void
.end method

.method private blacklist cancelEnrollment(J)V
    .registers 5

    .line 864
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_12

    .line 866
    :try_start_4
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1, p2}, Landroid/hardware/face/IFaceService;->cancelEnrollment(Landroid/os/IBinder;J)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 869
    goto :goto_12

    .line 867
    :catch_c
    move-exception p1

    .line 868
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 871
    :cond_12
    :goto_12
    return-void
.end method

.method private blacklist cancelFaceDetect(J)V
    .registers 6

    .line 884
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-nez v0, :cond_5

    .line 885
    return-void

    .line 889
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1, p2}, Landroid/hardware/face/IFaceService;->cancelFaceDetect(Landroid/os/IBinder;Ljava/lang/String;J)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_12} :catch_14

    .line 892
    nop

    .line 893
    return-void

    .line 890
    :catch_14
    move-exception p1

    .line 891
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public static blacklist getAuthHelpMessage(Landroid/content/Context;II)Ljava/lang/String;
    .registers 5

    .line 1304
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_ec

    :pswitch_4
    goto/16 :goto_c8

    .line 1358
    :pswitch_6
    const p1, 0x1040407

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1356
    :pswitch_e
    const p1, 0x1040404

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1362
    :pswitch_16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x1070111

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 1364
    array-length v1, p0

    if-ge p2, v1, :cond_c8

    .line 1365
    aget-object p0, p0, p2

    return-object p0

    .line 1354
    :pswitch_27
    const p1, 0x1040410

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1352
    :pswitch_2f
    const p1, 0x104040a

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1336
    :pswitch_37
    const p1, 0x104040f

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1334
    :pswitch_3f
    const p1, 0x1040411

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1332
    :pswitch_47
    const p1, 0x104040b

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1350
    :pswitch_4f
    const p1, 0x104041c

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1348
    :pswitch_57
    const p1, 0x1040415

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1346
    :pswitch_5f
    const p1, 0x104040d

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1344
    :pswitch_67
    const p1, 0x104041a

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1312
    :pswitch_6f
    const p1, 0x1040409

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1330
    :pswitch_77
    const p1, 0x104040c

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1328
    :pswitch_7f
    const p1, 0x104041b

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1325
    :pswitch_87
    const p1, 0x1040418

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1322
    :pswitch_8f
    const p1, 0x1040417

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1319
    :pswitch_97
    const p1, 0x1040419

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1316
    :pswitch_9f
    const p1, 0x1040416

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1314
    :pswitch_a7
    const p1, 0x1040413

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1342
    :pswitch_af
    const p1, 0x1040414

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1340
    :pswitch_b7
    const p1, 0x1040412

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1338
    :pswitch_bf
    const p1, 0x1040406

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1308
    :pswitch_c7
    return-object v0

    .line 1370
    :cond_c8
    :goto_c8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown authentication acquired message: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FaceManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    return-object v0

    nop

    :pswitch_data_ec
    .packed-switch 0x0
        :pswitch_c7
        :pswitch_bf
        :pswitch_b7
        :pswitch_af
        :pswitch_a7
        :pswitch_9f
        :pswitch_97
        :pswitch_8f
        :pswitch_87
        :pswitch_7f
        :pswitch_77
        :pswitch_6f
        :pswitch_67
        :pswitch_5f
        :pswitch_57
        :pswitch_4f
        :pswitch_47
        :pswitch_3f
        :pswitch_37
        :pswitch_2f
        :pswitch_c7
        :pswitch_27
        :pswitch_16
        :pswitch_4
        :pswitch_4
        :pswitch_e
        :pswitch_6
    .end packed-switch
.end method

.method public static blacklist getEnrollHelpMessage(Landroid/content/Context;II)Ljava/lang/String;
    .registers 5

    .line 1379
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_ec

    :pswitch_4
    goto/16 :goto_c8

    .line 1430
    :pswitch_6
    const p1, 0x1040407

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1428
    :pswitch_e
    const p1, 0x1040404

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1432
    :pswitch_16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x1070111

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 1434
    array-length v1, p0

    if-ge p2, v1, :cond_c8

    .line 1435
    aget-object p0, p0, p2

    return-object p0

    .line 1426
    :pswitch_27
    const p1, 0x1040410

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1424
    :pswitch_2f
    const p1, 0x104040a

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1422
    :pswitch_37
    const p1, 0x104040f

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1420
    :pswitch_3f
    const p1, 0x1040411

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1418
    :pswitch_47
    const p1, 0x104040b

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1416
    :pswitch_4f
    const p1, 0x104041c

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1414
    :pswitch_57
    const p1, 0x1040415

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1412
    :pswitch_5f
    const p1, 0x104040d

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1410
    :pswitch_67
    const p1, 0x104041a

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1408
    :pswitch_6f
    const p1, 0x1040409

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1406
    :pswitch_77
    const p1, 0x104040c

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1404
    :pswitch_7f
    const p1, 0x104041b

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1401
    :pswitch_87
    const p1, 0x1040418

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1398
    :pswitch_8f
    const p1, 0x1040417

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1395
    :pswitch_97
    const p1, 0x1040419

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1392
    :pswitch_9f
    const p1, 0x1040416

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1390
    :pswitch_a7
    const p1, 0x1040413

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1388
    :pswitch_af
    const p1, 0x1040414

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1386
    :pswitch_b7
    const p1, 0x1040412

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1384
    :pswitch_bf
    const p1, 0x1040406

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1382
    :pswitch_c7
    return-object v0

    .line 1439
    :cond_c8
    :goto_c8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown enrollment acquired message: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FaceManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    return-object v0

    nop

    :pswitch_data_ec
    .packed-switch 0x0
        :pswitch_c7
        :pswitch_bf
        :pswitch_b7
        :pswitch_af
        :pswitch_a7
        :pswitch_9f
        :pswitch_97
        :pswitch_8f
        :pswitch_87
        :pswitch_7f
        :pswitch_77
        :pswitch_6f
        :pswitch_67
        :pswitch_5f
        :pswitch_57
        :pswitch_4f
        :pswitch_47
        :pswitch_3f
        :pswitch_37
        :pswitch_2f
        :pswitch_c7
        :pswitch_27
        :pswitch_16
        :pswitch_4
        :pswitch_4
        :pswitch_e
        :pswitch_6
    .end packed-switch
.end method

.method public static blacklist getErrorString(Landroid/content/Context;II)Ljava/lang/String;
    .registers 5

    .line 899
    packed-switch p1, :pswitch_data_a0

    :pswitch_3
    goto :goto_75

    .line 927
    :pswitch_4
    const p1, 0x1040434

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 924
    :pswitch_c
    const p1, 0x104042b

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 922
    :pswitch_14
    const p1, 0x1040425

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 920
    :pswitch_1c
    const p1, 0x104042a

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 918
    :pswitch_24
    const p1, 0x104042e

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 915
    :pswitch_2c
    const p1, 0x1040427

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 930
    :pswitch_34
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070112

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 932
    array-length v1, v0

    if-ge p2, v1, :cond_75

    .line 933
    aget-object p0, v0, p2

    return-object p0

    .line 913
    :pswitch_45
    const p1, 0x1040426

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 911
    :pswitch_4d
    const p1, 0x1040423

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 909
    :pswitch_55
    const p1, 0x1040429

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 907
    :pswitch_5d
    const p1, 0x104042c

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 904
    :pswitch_65
    const p1, 0x104042d

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 901
    :pswitch_6d
    const p1, 0x1040424

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 941
    :cond_75
    :goto_75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid error message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FaceManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    const p1, 0x104042f

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_6d
        :pswitch_65
        :pswitch_5d
        :pswitch_55
        :pswitch_4d
        :pswitch_3
        :pswitch_45
        :pswitch_34
        :pswitch_2c
        :pswitch_24
        :pswitch_1c
        :pswitch_14
        :pswitch_3
        :pswitch_3
        :pswitch_c
        :pswitch_4
    .end packed-switch
.end method

.method public static blacklist getMappedAcquiredInfo(II)I
    .registers 4

    .line 951
    const/4 v0, 0x2

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_e

    .line 973
    :pswitch_5
    return v1

    .line 971
    :pswitch_6
    add-int/lit16 p1, p1, 0x3e8

    return p1

    .line 969
    :pswitch_9
    return v0

    .line 964
    :pswitch_a
    const/4 p0, 0x1

    return p0

    .line 957
    :pswitch_c
    return v0

    .line 953
    :pswitch_d
    return v1

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private blacklist useHandler(Landroid/os/Handler;)V
    .registers 3

    .line 214
    if-eqz p1, :cond_e

    .line 215
    iput-object p1, p0, Landroid/hardware/face/FaceManager;->mHandler:Landroid/os/Handler;

    .line 216
    new-instance p1, Landroid/os/HandlerExecutor;

    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, v0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Landroid/hardware/face/FaceManager;->mExecutor:Landroid/os/HandlerExecutor;

    goto :goto_29

    .line 217
    :cond_e
    iget-object p1, p0, Landroid/hardware/face/FaceManager;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    if-eq p1, v0, :cond_29

    .line 218
    iget-object p1, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/face/FaceManager;->mHandler:Landroid/os/Handler;

    .line 219
    new-instance p1, Landroid/os/HandlerExecutor;

    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, v0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Landroid/hardware/face/FaceManager;->mExecutor:Landroid/os/HandlerExecutor;

    .line 221
    :cond_29
    :goto_29
    return-void
.end method


# virtual methods
.method public blacklist addAuthenticatorsRegisteredCallback(Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback;)V
    .registers 3

    .line 783
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_10

    .line 785
    :try_start_4
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    invoke-interface {v0, p1}, Landroid/hardware/face/IFaceService;->addAuthenticatorsRegisteredCallback(Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 788
    goto :goto_17

    .line 786
    :catch_a
    move-exception p1

    .line 787
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 790
    :cond_10
    const-string p1, "FaceManager"

    const-string v0, "addAuthenticatorsRegisteredCallback(): Service not connected!"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :goto_17
    return-void
.end method

.method public blacklist addLockoutResetCallback(Landroid/hardware/face/FaceManager$LockoutResetCallback;)V
    .registers 5

    .line 815
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_25

    .line 817
    :try_start_4
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 818
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    new-instance v2, Landroid/hardware/face/FaceManager$2;

    invoke-direct {v2, p0, v0, p1}, Landroid/hardware/face/FaceManager$2;-><init>(Landroid/hardware/face/FaceManager;Landroid/os/PowerManager;Landroid/hardware/face/FaceManager$LockoutResetCallback;)V

    iget-object p1, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 840
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p1

    .line 818
    invoke-interface {v1, v2, p1}, Landroid/hardware/face/IFaceService;->addLockoutResetCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;Ljava/lang/String;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1e} :catch_1f

    .line 843
    goto :goto_2c

    .line 841
    :catch_1f
    move-exception p1

    .line 842
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 845
    :cond_25
    const-string p1, "FaceManager"

    const-string v0, "addLockoutResetCallback(): Service not connected!"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :goto_2c
    return-void
.end method

.method public blacklist authenticate(Landroid/hardware/biometrics/CryptoObject;Landroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$AuthenticationCallback;Landroid/os/Handler;I)V
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 230
    new-instance v0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;

    invoke-direct {v0}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;-><init>()V

    .line 231
    invoke-virtual {v0, p5}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->setUserId(I)Landroid/hardware/face/FaceAuthenticateOptions$Builder;

    move-result-object p5

    .line 232
    invoke-virtual {p5}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->build()Landroid/hardware/face/FaceAuthenticateOptions;

    move-result-object v5

    .line 230
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/face/FaceManager;->authenticate(Landroid/hardware/biometrics/CryptoObject;Landroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$AuthenticationCallback;Landroid/os/Handler;Landroid/hardware/face/FaceAuthenticateOptions;)V

    .line 233
    return-void
.end method

.method public blacklist authenticate(Landroid/hardware/biometrics/CryptoObject;Landroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$AuthenticationCallback;Landroid/os/Handler;Landroid/hardware/face/FaceAuthenticateOptions;)V
    .registers 16

    .line 259
    if-eqz p3, :cond_75

    .line 263
    const-string v1, "FaceManager"

    if-eqz p2, :cond_12

    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 264
    const-string p1, "authentication already canceled"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void

    .line 268
    :cond_12
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/hardware/face/FaceAuthenticateOptions;->setOpPackageName(Ljava/lang/String;)Landroid/hardware/face/FaceAuthenticateOptions;

    .line 269
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/hardware/face/FaceAuthenticateOptions;->setAttributionTag(Ljava/lang/String;)Landroid/hardware/face/FaceAuthenticateOptions;

    .line 271
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_74

    .line 273
    :try_start_28
    new-instance v0, Landroid/hardware/face/FaceCallback;

    invoke-direct {v0, p3, p1}, Landroid/hardware/face/FaceCallback;-><init>(Landroid/hardware/face/FaceManager$AuthenticationCallback;Landroid/hardware/biometrics/CryptoObject;)V

    .line 274
    invoke-direct {p0, p4}, Landroid/hardware/face/FaceManager;->useHandler(Landroid/os/Handler;)V

    .line 275
    if-eqz p1, :cond_37

    invoke-virtual {p1}, Landroid/hardware/biometrics/CryptoObject;->getOpId()J

    move-result-wide v2

    goto :goto_39

    :cond_37
    const-wide/16 v2, 0x0

    :goto_39
    move-wide v6, v2

    .line 276
    const-string p1, "FaceManager#authenticate"

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 277
    iget-object v4, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    iget-object v5, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    new-instance v8, Landroid/hardware/face/FaceManager$FaceServiceReceiver;

    invoke-direct {v8, p0, v0}, Landroid/hardware/face/FaceManager$FaceServiceReceiver;-><init>(Landroid/hardware/face/FaceManager;Landroid/hardware/face/FaceCallback;)V

    move-object v9, p5

    invoke-interface/range {v4 .. v9}, Landroid/hardware/face/IFaceService;->authenticate(Landroid/os/IBinder;JLandroid/hardware/face/IFaceServiceReceiver;Landroid/hardware/face/FaceAuthenticateOptions;)J

    move-result-wide p4

    .line 279
    if-eqz p2, :cond_6a

    .line 280
    new-instance p1, Landroid/hardware/face/FaceManager$OnAuthenticationCancelListener;

    invoke-direct {p1, p0, p4, p5}, Landroid/hardware/face/FaceManager$OnAuthenticationCancelListener;-><init>(Landroid/hardware/face/FaceManager;J)V

    invoke-virtual {p2, p1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_57} :catch_58
    .catchall {:try_start_28 .. :try_end_57} :catchall_6e

    goto :goto_6a

    .line 282
    :catch_58
    move-exception v0

    move-object p1, v0

    .line 283
    :try_start_5a
    const-string p2, "Remote exception while authenticating: "

    invoke-static {v1, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 286
    iget-object p1, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 287
    const/4 p2, 0x1

    const/4 p4, 0x0

    invoke-static {p1, p2, p4}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p1

    .line 286
    invoke-virtual {p3, p2, p1}, Landroid/hardware/face/FaceManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V
    :try_end_6a
    .catchall {:try_start_5a .. :try_end_6a} :catchall_6e

    .line 290
    :cond_6a
    :goto_6a
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 291
    goto :goto_74

    .line 290
    :catchall_6e
    move-exception v0

    move-object p1, v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 291
    throw p1

    .line 293
    :cond_74
    :goto_74
    return-void

    .line 260
    :cond_75
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must supply an authentication callback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist detectFace(Landroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$FaceDetectionCallback;Landroid/hardware/face/FaceAuthenticateOptions;)V
    .registers 8

    .line 303
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-nez v0, :cond_5

    .line 304
    return-void

    .line 307
    :cond_5
    invoke-virtual {p1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    const-string v1, "FaceManager"

    if-eqz v0, :cond_13

    .line 308
    const-string p1, "Detection already cancelled"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return-void

    .line 312
    :cond_13
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/hardware/face/FaceAuthenticateOptions;->setOpPackageName(Ljava/lang/String;)Landroid/hardware/face/FaceAuthenticateOptions;

    .line 313
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/hardware/face/FaceAuthenticateOptions;->setAttributionTag(Ljava/lang/String;)Landroid/hardware/face/FaceAuthenticateOptions;

    .line 315
    new-instance v0, Landroid/hardware/face/FaceCallback;

    invoke-direct {v0, p2}, Landroid/hardware/face/FaceCallback;-><init>(Landroid/hardware/face/FaceManager$FaceDetectionCallback;)V

    .line 318
    :try_start_2a
    iget-object p2, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    new-instance v3, Landroid/hardware/face/FaceManager$FaceServiceReceiver;

    invoke-direct {v3, p0, v0}, Landroid/hardware/face/FaceManager$FaceServiceReceiver;-><init>(Landroid/hardware/face/FaceManager;Landroid/hardware/face/FaceCallback;)V

    invoke-interface {p2, v2, v3, p3}, Landroid/hardware/face/IFaceService;->detectFace(Landroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;Landroid/hardware/face/FaceAuthenticateOptions;)J

    move-result-wide p2

    .line 320
    new-instance v0, Landroid/hardware/face/FaceManager$OnFaceDetectionCancelListener;

    invoke-direct {v0, p0, p2, p3}, Landroid/hardware/face/FaceManager$OnFaceDetectionCancelListener;-><init>(Landroid/hardware/face/FaceManager;J)V

    invoke-virtual {p1, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_3f} :catch_40

    .line 323
    goto :goto_46

    .line 321
    :catch_40
    move-exception p1

    .line 322
    const-string p2, "Remote exception when requesting finger detect"

    invoke-static {v1, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    :goto_46
    return-void
.end method

.method public blacklist enroll(I[BLandroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$EnrollmentCallback;[I)V
    .registers 16

    .line 336
    new-instance v0, Landroid/hardware/face/FaceEnrollOptions$Builder;

    invoke-direct {v0}, Landroid/hardware/face/FaceEnrollOptions$Builder;-><init>()V

    .line 338
    invoke-virtual {v0}, Landroid/hardware/face/FaceEnrollOptions$Builder;->build()Landroid/hardware/face/FaceEnrollOptions;

    move-result-object v9

    .line 336
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v9}, Landroid/hardware/face/FaceManager;->enroll(I[BLandroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$EnrollmentCallback;[ILandroid/view/Surface;ZLandroid/hardware/face/FaceEnrollOptions;)V

    .line 340
    return-void
.end method

.method public blacklist enroll(I[BLandroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$EnrollmentCallback;[ILandroid/view/Surface;ZLandroid/hardware/face/FaceEnrollOptions;)V
    .registers 27

    .line 365
    move-object/from16 v1, p0

    move-object/from16 v0, p3

    move-object/from16 v2, p4

    if-eqz v2, :cond_9a

    .line 369
    const-string v3, "FaceManager"

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 370
    const-string v0, "enrollment already canceled"

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return-void

    .line 374
    :cond_18
    const/4 v4, 0x0

    if-nez p2, :cond_26

    .line 375
    iget-object v0, v1, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 376
    const/4 v1, 0x2

    invoke-static {v0, v1, v4}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 375
    invoke-virtual {v2, v1, v0}, Landroid/hardware/face/FaceManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    .line 378
    return-void

    .line 381
    :cond_26
    invoke-virtual/range {p0 .. p1}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, v1, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 382
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e00b7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    const/4 v7, 0x1

    if-lt v5, v6, :cond_48

    .line 383
    iget-object v0, v1, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 384
    invoke-static {v0, v7, v4}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 383
    invoke-virtual {v2, v7, v0}, Landroid/hardware/face/FaceManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    .line 386
    return-void

    .line 389
    :cond_48
    iget-object v5, v1, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v5, :cond_99

    .line 391
    :try_start_4c
    new-instance v5, Landroid/hardware/face/FaceCallback;

    invoke-direct {v5, v2}, Landroid/hardware/face/FaceCallback;-><init>(Landroid/hardware/face/FaceManager$EnrollmentCallback;)V

    .line 392
    const-string v6, "FaceManager#enroll"

    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 393
    iget-object v8, v1, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    iget-object v10, v1, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    new-instance v12, Landroid/hardware/face/FaceManager$FaceServiceReceiver;

    invoke-direct {v12, v1, v5}, Landroid/hardware/face/FaceManager$FaceServiceReceiver;-><init>(Landroid/hardware/face/FaceManager;Landroid/hardware/face/FaceCallback;)V

    iget-object v5, v1, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 394
    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v13

    .line 393
    move/from16 v9, p1

    move-object/from16 v11, p2

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move/from16 v16, p7

    move-object/from16 v17, p8

    invoke-interface/range {v8 .. v17}, Landroid/hardware/face/IFaceService;->enroll(ILandroid/os/IBinder;[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[ILandroid/view/Surface;ZLandroid/hardware/face/FaceEnrollOptions;)J

    move-result-wide v5

    .line 396
    if-eqz v0, :cond_90

    .line 397
    new-instance v8, Landroid/hardware/face/FaceManager$OnEnrollCancelListener;

    const/4 v9, 0x0

    invoke-direct {v8, v1, v5, v6, v9}, Landroid/hardware/face/FaceManager$OnEnrollCancelListener;-><init>(Landroid/hardware/face/FaceManager;JLandroid/hardware/face/FaceManager-IA;)V

    invoke-virtual {v0, v8}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V
    :try_end_80
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_80} :catch_81
    .catchall {:try_start_4c .. :try_end_80} :catchall_94

    goto :goto_90

    .line 399
    :catch_81
    move-exception v0

    .line 400
    :try_start_82
    const-string v5, "Remote exception in enroll: "

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 403
    iget-object v0, v1, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 404
    invoke-static {v0, v7, v4}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 403
    invoke-virtual {v2, v7, v0}, Landroid/hardware/face/FaceManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V
    :try_end_90
    .catchall {:try_start_82 .. :try_end_90} :catchall_94

    .line 407
    :cond_90
    :goto_90
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 408
    goto :goto_99

    .line 407
    :catchall_94
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 408
    throw v0

    .line 410
    :cond_99
    :goto_99
    return-void

    .line 366
    :cond_9a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply an enrollment callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist enrollRemotely(I[BLandroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$EnrollmentCallback;[I)V
    .registers 16

    .line 432
    if-eqz p4, :cond_5f

    .line 436
    const-string v1, "FaceManager"

    if-eqz p3, :cond_12

    invoke-virtual {p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 437
    const-string p1, "enrollRemotely is already canceled."

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    return-void

    .line 441
    :cond_12
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_5e

    .line 443
    :try_start_16
    new-instance v0, Landroid/hardware/face/FaceCallback;

    invoke-direct {v0, p4}, Landroid/hardware/face/FaceCallback;-><init>(Landroid/hardware/face/FaceManager$EnrollmentCallback;)V

    .line 444
    const-string v2, "FaceManager#enrollRemotely"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 445
    iget-object v3, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    iget-object v5, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    new-instance v7, Landroid/hardware/face/FaceManager$FaceServiceReceiver;

    invoke-direct {v7, p0, v0}, Landroid/hardware/face/FaceManager$FaceServiceReceiver;-><init>(Landroid/hardware/face/FaceManager;Landroid/hardware/face/FaceCallback;)V

    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 446
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    .line 445
    move v4, p1

    move-object v6, p2

    move-object v9, p5

    invoke-interface/range {v3 .. v9}, Landroid/hardware/face/IFaceService;->enrollRemotely(ILandroid/os/IBinder;[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[I)J

    move-result-wide p1

    .line 448
    if-eqz p3, :cond_54

    .line 449
    new-instance p5, Landroid/hardware/face/FaceManager$OnEnrollCancelListener;

    const/4 v0, 0x0

    invoke-direct {p5, p0, p1, p2, v0}, Landroid/hardware/face/FaceManager$OnEnrollCancelListener;-><init>(Landroid/hardware/face/FaceManager;JLandroid/hardware/face/FaceManager-IA;)V

    invoke-virtual {p3, p5}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_41} :catch_42
    .catchall {:try_start_16 .. :try_end_41} :catchall_58

    goto :goto_54

    .line 451
    :catch_42
    move-exception v0

    move-object p1, v0

    .line 452
    :try_start_44
    const-string p2, "Remote exception in enrollRemotely: "

    invoke-static {v1, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 455
    iget-object p1, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 456
    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p1

    .line 455
    invoke-virtual {p4, p2, p1}, Landroid/hardware/face/FaceManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V
    :try_end_54
    .catchall {:try_start_44 .. :try_end_54} :catchall_58

    .line 459
    :cond_54
    :goto_54
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 460
    goto :goto_5e

    .line 459
    :catchall_58
    move-exception v0

    move-object p1, v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 460
    throw p1

    .line 462
    :cond_5e
    :goto_5e
    return-void

    .line 433
    :cond_5f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must supply an enrollment callback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist generateChallenge(IILandroid/hardware/face/FaceManager$GenerateChallengeCallback;)V
    .registers 11

    .line 478
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_25

    .line 480
    :try_start_4
    new-instance v0, Landroid/hardware/face/FaceCallback;

    invoke-direct {v0, p3}, Landroid/hardware/face/FaceCallback;-><init>(Landroid/hardware/face/FaceManager$GenerateChallengeCallback;)V

    .line 481
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    new-instance v5, Landroid/hardware/face/FaceManager$FaceServiceReceiver;

    invoke-direct {v5, p0, v0}, Landroid/hardware/face/FaceManager$FaceServiceReceiver;-><init>(Landroid/hardware/face/FaceManager;Landroid/hardware/face/FaceCallback;)V

    iget-object p3, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 482
    invoke-virtual {p3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    .line 481
    move v3, p1

    move v4, p2

    invoke-interface/range {v1 .. v6}, Landroid/hardware/face/IFaceService;->generateChallenge(Landroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1d} :catch_1e

    .line 485
    goto :goto_25

    .line 483
    :catch_1e
    move-exception v0

    move-object p1, v0

    .line 484
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 487
    :cond_25
    :goto_25
    return-void
.end method

.method public blacklist generateChallenge(ILandroid/hardware/face/FaceManager$GenerateChallengeCallback;)V
    .registers 5

    .line 497
    nop

    .line 498
    invoke-virtual {p0}, Landroid/hardware/face/FaceManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v0

    .line 499
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 500
    const-string p1, "FaceManager"

    const-string p2, "No sensors"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    return-void

    .line 504
    :cond_13
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget v0, v0, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    .line 505
    invoke-virtual {p0, v0, p1, p2}, Landroid/hardware/face/FaceManager;->generateChallenge(IILandroid/hardware/face/FaceManager$GenerateChallengeCallback;)V

    .line 506
    return-void
.end method

.method public blacklist getEnrolledFaces()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/face/Face;",
            ">;"
        }
    .end annotation

    .line 651
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getEnrolledFaces(I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/face/Face;",
            ">;"
        }
    .end annotation

    .line 625
    nop

    .line 626
    invoke-virtual {p0}, Landroid/hardware/face/FaceManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v0

    .line 627
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 628
    const-string p1, "FaceManager"

    const-string v0, "No sensors"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 632
    :cond_18
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v1, :cond_38

    .line 634
    :try_start_1c
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget v0, v0, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 635
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 634
    invoke-interface {v1, v0, p1, v2}, Landroid/hardware/face/IFaceService;->getEnrolledFaces(IILjava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_31} :catch_32

    return-object p1

    .line 636
    :catch_32
    move-exception p1

    .line 637
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 640
    :cond_38
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist getFeature(IILandroid/hardware/face/FaceManager$GetFeatureCallback;)V
    .registers 11

    .line 567
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_25

    .line 569
    :try_start_4
    new-instance v0, Landroid/hardware/face/FaceCallback;

    invoke-direct {v0, p3}, Landroid/hardware/face/FaceCallback;-><init>(Landroid/hardware/face/FaceManager$GetFeatureCallback;)V

    .line 570
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    new-instance v5, Landroid/hardware/face/FaceManager$FaceServiceReceiver;

    invoke-direct {v5, p0, v0}, Landroid/hardware/face/FaceManager$FaceServiceReceiver;-><init>(Landroid/hardware/face/FaceManager;Landroid/hardware/face/FaceCallback;)V

    iget-object p3, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 571
    invoke-virtual {p3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    .line 570
    move v3, p1

    move v4, p2

    invoke-interface/range {v1 .. v6}, Landroid/hardware/face/IFaceService;->getFeature(Landroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1d} :catch_1e

    .line 574
    goto :goto_25

    .line 572
    :catch_1e
    move-exception v0

    move-object p1, v0

    .line 573
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 576
    :cond_25
    :goto_25
    return-void
.end method

.method public blacklist getLockoutModeForUser(II)I
    .registers 4

    .line 800
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_f

    .line 802
    :try_start_4
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    invoke-interface {v0, p1, p2}, Landroid/hardware/face/IFaceService;->getLockoutModeForUser(II)I

    move-result p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return p1

    .line 803
    :catch_b
    move-exception p1

    .line 804
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 807
    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist getSensorProperties()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/face/FaceSensorProperties;",
            ">;"
        }
    .end annotation

    .line 724
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 725
    nop

    .line 726
    invoke-virtual {p0}, Landroid/hardware/face/FaceManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v1

    .line 727
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 728
    invoke-static {v2}, Landroid/hardware/face/FaceSensorProperties;->from(Landroid/hardware/face/FaceSensorPropertiesInternal;)Landroid/hardware/face/FaceSensorProperties;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 729
    goto :goto_e

    .line 730
    :cond_22
    return-object v0
.end method

.method public blacklist getSensorPropertiesInternal()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/face/FaceSensorPropertiesInternal;",
            ">;"
        }
    .end annotation

    .line 745
    :try_start_0
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mProps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-nez v0, :cond_d

    goto :goto_1a

    .line 748
    :cond_d
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/face/IFaceService;->getSensorPropertiesInternal(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 746
    :cond_1a
    :goto_1a
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mProps:Ljava/util/List;
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1c} :catch_1d

    return-object v0

    .line 749
    :catch_1d
    move-exception v0

    .line 750
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 752
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mProps:Ljava/util/List;

    return-object v0
.end method

.method public blacklist hasEnrolledTemplates()Z
    .registers 2

    .line 662
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v0

    return v0
.end method

.method public blacklist hasEnrolledTemplates(I)Z
    .registers 5

    .line 672
    nop

    .line 673
    invoke-virtual {p0}, Landroid/hardware/face/FaceManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v0

    .line 674
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    .line 675
    const-string p1, "FaceManager"

    const-string v0, "No sensors"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    return v2

    .line 679
    :cond_14
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v1, :cond_33

    .line 681
    :try_start_18
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget v0, v0, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 682
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 681
    invoke-interface {v1, v0, p1, v2}, Landroid/hardware/face/IFaceService;->hasEnrolledFaces(IILjava/lang/String;)Z

    move-result p1
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_2c} :catch_2d

    return p1

    .line 683
    :catch_2d
    move-exception p1

    .line 684
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 687
    :cond_33
    return v2
.end method

.method public blacklist isHardwareDetected()Z
    .registers 5

    .line 698
    nop

    .line 699
    invoke-virtual {p0}, Landroid/hardware/face/FaceManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v0

    .line 700
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, "FaceManager"

    const/4 v3, 0x0

    if-eqz v1, :cond_14

    .line 701
    const-string v0, "No sensors"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    return v3

    .line 705
    :cond_14
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v1, :cond_33

    .line 707
    :try_start_18
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget v0, v0, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 708
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 707
    invoke-interface {v1, v0, v2}, Landroid/hardware/face/IFaceService;->isHardwareDetected(ILjava/lang/String;)Z

    move-result v0
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_2c} :catch_2d

    return v0

    .line 709
    :catch_2d
    move-exception v0

    .line 710
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 713
    :cond_33
    const-string v0, "isFaceHardwareDetected(): Service not connected!"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    return v3
.end method

.method public blacklist registerBiometricStateListener(Landroid/hardware/biometrics/BiometricStateListener;)V
    .registers 3

    .line 763
    :try_start_0
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    invoke-interface {v0, p1}, Landroid/hardware/face/IFaceService;->registerBiometricStateListener(Landroid/hardware/biometrics/IBiometricStateListener;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 766
    nop

    .line 767
    return-void

    .line 764
    :catch_7
    move-exception p1

    .line 765
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist remove(Landroid/hardware/face/Face;ILandroid/hardware/face/FaceManager$RemovalCallback;)V
    .registers 11

    .line 589
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_28

    .line 591
    :try_start_4
    new-instance v0, Landroid/hardware/face/FaceCallback;

    invoke-direct {v0, p3, p1}, Landroid/hardware/face/FaceCallback;-><init>(Landroid/hardware/face/FaceManager$RemovalCallback;Landroid/hardware/face/Face;)V

    .line 592
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v3

    new-instance v5, Landroid/hardware/face/FaceManager$FaceServiceReceiver;

    invoke-direct {v5, p0, v0}, Landroid/hardware/face/FaceManager$FaceServiceReceiver;-><init>(Landroid/hardware/face/FaceManager;Landroid/hardware/face/FaceCallback;)V

    iget-object p1, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 593
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    .line 592
    move v4, p2

    invoke-interface/range {v1 .. v6}, Landroid/hardware/face/IFaceService;->remove(Landroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_20} :catch_21

    .line 596
    goto :goto_28

    .line 594
    :catch_21
    move-exception v0

    move-object p1, v0

    .line 595
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 598
    :cond_28
    :goto_28
    return-void
.end method

.method public blacklist removeAll(ILandroid/hardware/face/FaceManager$RemovalCallback;)V
    .registers 6

    .line 606
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_22

    .line 608
    :try_start_4
    new-instance v0, Landroid/hardware/face/FaceCallback;

    invoke-direct {v0, p2}, Landroid/hardware/face/FaceCallback;-><init>(Landroid/hardware/face/FaceManager$RemovalCallback;)V

    .line 609
    iget-object p2, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    new-instance v2, Landroid/hardware/face/FaceManager$FaceServiceReceiver;

    invoke-direct {v2, p0, v0}, Landroid/hardware/face/FaceManager$FaceServiceReceiver;-><init>(Landroid/hardware/face/FaceManager;Landroid/hardware/face/FaceCallback;)V

    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 610
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 609
    invoke-interface {p2, v1, p1, v2, v0}, Landroid/hardware/face/IFaceService;->removeAll(Landroid/os/IBinder;ILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1b} :catch_1c

    .line 613
    goto :goto_22

    .line 611
    :catch_1c
    move-exception p1

    .line 612
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 615
    :cond_22
    :goto_22
    return-void
.end method

.method public blacklist resetLockout(II[B)V
    .registers 11

    .line 535
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_1c

    .line 537
    :try_start_4
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 538
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    .line 537
    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-interface/range {v1 .. v6}, Landroid/hardware/face/IFaceService;->resetLockout(Landroid/os/IBinder;II[BLjava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_14} :catch_15

    .line 541
    goto :goto_1c

    .line 539
    :catch_15
    move-exception v0

    move-object p1, v0

    .line 540
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 543
    :cond_1c
    :goto_1c
    return-void
.end method

.method public blacklist revokeChallenge(IIJ)V
    .registers 13

    .line 515
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_1c

    .line 517
    :try_start_4
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 518
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 517
    move v3, p1

    move v4, p2

    move-wide v6, p3

    invoke-interface/range {v1 .. v7}, Landroid/hardware/face/IFaceService;->revokeChallenge(Landroid/os/IBinder;IILjava/lang/String;J)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_14} :catch_15

    .line 521
    goto :goto_1c

    .line 519
    :catch_15
    move-exception v0

    move-object p1, v0

    .line 520
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 523
    :cond_1c
    :goto_1c
    return-void
.end method

.method public blacklist scheduleWatchdog()V
    .registers 2

    .line 857
    :try_start_0
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    invoke-interface {v0}, Landroid/hardware/face/IFaceService;->scheduleWatchdog()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 860
    nop

    .line 861
    return-void

    .line 858
    :catch_7
    move-exception v0

    .line 859
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist setFeature(IIZ[BLandroid/hardware/face/FaceManager$SetFeatureCallback;)V
    .registers 15

    .line 551
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_27

    .line 553
    :try_start_4
    new-instance v0, Landroid/hardware/face/FaceCallback;

    invoke-direct {v0, p5}, Landroid/hardware/face/FaceCallback;-><init>(Landroid/hardware/face/FaceManager$SetFeatureCallback;)V

    .line 554
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    new-instance v7, Landroid/hardware/face/FaceManager$FaceServiceReceiver;

    invoke-direct {v7, p0, v0}, Landroid/hardware/face/FaceManager$FaceServiceReceiver;-><init>(Landroid/hardware/face/FaceManager;Landroid/hardware/face/FaceCallback;)V

    iget-object p5, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 555
    invoke-virtual {p5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    .line 554
    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v8}, Landroid/hardware/face/IFaceService;->setFeature(Landroid/os/IBinder;IIZ[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1f} :catch_20

    .line 558
    goto :goto_27

    .line 556
    :catch_20
    move-exception v0

    move-object p1, v0

    .line 557
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 560
    :cond_27
    :goto_27
    return-void
.end method
