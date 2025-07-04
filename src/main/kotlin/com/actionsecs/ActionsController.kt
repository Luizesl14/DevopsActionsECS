package com.actionsecs

import org.springframework.http.HttpStatus
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController


@RestController
@RequestMapping(path = arrayOf("/actions"))
class ActionsController {

    @GetMapping
    fun getActions(): ResponseEntity<String> {
        return ResponseEntity.status(HttpStatus.OK).body("Actions Realizado com Sucesso")
    }
}