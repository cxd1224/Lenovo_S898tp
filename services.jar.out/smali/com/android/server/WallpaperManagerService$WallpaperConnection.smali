.class Lcom/android/server/WallpaperManagerService$WallpaperConnection;
.super Landroid/service/wallpaper/IWallpaperConnection$Stub;
.source "WallpaperManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperConnection"
.end annotation


# instance fields
.field mEngine:Landroid/service/wallpaper/IWallpaperEngine;

.field final mInfo:Landroid/app/WallpaperInfo;

.field mReply:Landroid/os/IRemoteCallback;

.field mService:Landroid/service/wallpaper/IWallpaperService;

.field final mToken:Landroid/os/Binder;

.field mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

.field final synthetic this$0:Lcom/android/server/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/WallpaperManagerService;Landroid/app/WallpaperInfo;Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    .locals 1
    .parameter
    .parameter "info"
    .parameter "wallpaper"

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    invoke-direct {p0}, Landroid/service/wallpaper/IWallpaperConnection$Stub;-><init>()V

    .line 233
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    .line 240
    iput-object p2, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    .line 241
    iput-object p3, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 242
    return-void
.end method


# virtual methods
.method public attachEngine(Landroid/service/wallpaper/IWallpaperEngine;)V
    .locals 2
    .parameter "engine"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v1, v0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 292
    :try_start_0
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 293
    monitor-exit v1

    .line 294
    return-void

    .line 293
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public engineShown(Landroid/service/wallpaper/IWallpaperEngine;)V
    .locals 6
    .parameter "engine"

    .prologue
    .line 298
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v3, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 299
    :try_start_0
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    if-eqz v3, :cond_0

    .line 300
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 302
    .local v1, ident:J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 306
    :goto_0
    const/4 v3, 0x0

    :try_start_2
    iput-object v3, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    .line 308
    .end local v1           #ident:J
    :cond_0
    monitor-exit v4

    .line 309
    return-void

    .line 303
    .restart local v1       #ident:J
    :catch_0
    move-exception v0

    .line 304
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 308
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #ident:J
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "name"
    .parameter "service"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v1, v0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-ne v0, p0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    .line 249
    invoke-static {p2}, Landroid/service/wallpaper/IWallpaperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/wallpaper/IWallpaperService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 250
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    invoke-virtual {v0, p0, v2}, Lcom/android/server/WallpaperManagerService;->attachServiceLocked(Lcom/android/server/WallpaperManagerService$WallpaperConnection;Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    .line 255
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    #calls: Lcom/android/server/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    invoke-static {v0, v2}, Lcom/android/server/WallpaperManagerService;->access$300(Lcom/android/server/WallpaperManagerService;Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    .line 257
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    #calls: Lcom/android/server/WallpaperManagerService;->updateSettingsComponentName()V
    invoke-static {v0}, Lcom/android/server/WallpaperManagerService;->access$500(Lcom/android/server/WallpaperManagerService;)V

    .line 260
    :cond_0
    monitor-exit v1

    .line 261
    return-void

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 6
    .parameter "name"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v1, v0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 266
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 268
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-ne v0, p0, :cond_0

    .line 269
    const-string v0, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wallpaper service gone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget-object v3, v3, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget-boolean v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperUpdating:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget-wide v2, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget v2, v2, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    if-ne v0, v2, :cond_0

    .line 282
    const-string v0, "WallpaperManagerService"

    const-string v2, "Reverting to built-in wallpaper!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget v3, v3, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/WallpaperManagerService;->clearWallpaperLocked(ZILandroid/os/IRemoteCallback;)V

    .line 286
    :cond_0
    monitor-exit v1

    .line 287
    return-void

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .parameter "name"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v1, v0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 314
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-ne v0, p0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    invoke-virtual {v0, p1, v2}, Lcom/android/server/WallpaperManagerService;->updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    monitor-exit v1

    .line 317
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 318
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
